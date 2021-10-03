/*------------------------------------------------------------------------
  File        : stateOrderCreated
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

CLASS Exercise_17.stateOrderCreated INHERITS State: 

    METHOD PUBLIC VOID customerMakesDownpayment(objOrderStateMachine as OrderStateMachine):
        objOrderStateMachine:setState(NEW stateProductionStarted()).
    END METHOD.

    METHOD PUBLIC VOID paymentTermOverdue(objOrderStateMachine as OrderStateMachine):
        objOrderStateMachine:setState(NEW stateOrderCancelled()).
    END METHOD.

END CLASS.