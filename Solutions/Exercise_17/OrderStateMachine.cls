/*------------------------------------------------------------------------
  File        : OrderStateMachine
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_17.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_17.OrderStateMachine: 

    DEFINE PRIVATE PROPERTY currentState AS State NO-UNDO 
        GET.
        SET. 

    DEFINE PRIVATE PROPERTY order AS Order NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR PUBLIC OrderStateMachine (objOrder AS Order):

        /* set state to the initial state */
        ASSIGN 
            order        = objOrder
            currentState = NEW stateOrderCreated().
    END CONSTRUCTOR.

    METHOD PUBLIC VOID carDelivered(  ):
        CAST(currentState,stateDeliveryDateSet):handoverCarKeys(THIS-OBJECT). 
    END METHOD.

    METHOD PUBLIC VOID noPaymentReceived(  ):
        CAST(currentState, stateOrderCreated):paymentTermOverdue(THIS-OBJECT).
    END METHOD.

    METHOD PUBLIC VOID receiveDownpayment(INPUT ipdAmount AS DECIMAL):
        Order:addPayment(ipdAmount).
        /* downpayment should be at least 20 percent */
        IF Order:totalPaid GE Order:totalOrderAmount / 5 THEN
            CAST(currentState, stateOrderCreated):customerMakesDownpayment(THIS-OBJECT).
    END METHOD.

    METHOD PUBLIC VOID receiveSecondPayment(INPUT ipdAmount AS DECIMAL):
        Order:addPayment(ipdAmount).
        IF Order:totalPaid GE Order:totalOrderAmount THEN
            CAST(currentState,stateProductionCompleted):customerPaysFullAmount(THIS-OBJECT).
        RETURN.

    END METHOD.

    METHOD PUBLIC VOID changeStateToProdStarted ():
        CAST(currentState, stateProductionStarted):goBackToProd(THIS-OBJECT).
    END METHOD.

    METHOD PUBLIC VOID setState(objState AS State):
        currentState = objState.
    END METHOD.    

    METHOD PUBLIC VOID signalCarCompleted(  ):
        CAST(currentState, stateProductionStarted):factoryCompletesCar(THIS-OBJECT).
    END METHOD.



END CLASS.