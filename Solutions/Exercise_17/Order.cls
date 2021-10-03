 /*------------------------------------------------------------------------
   File        : Order
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

CLASS Exercise_17.Order: 
    
    DEFINE PUBLIC PROPERTY orderStateMachine AS OrderStateMachine NO-UNDO 
        GET.
        PROTECTED SET. 

    DEFINE PUBLIC PROPERTY totalOrderAmount AS DECIMAL NO-UNDO 
        GET.
        SET.     

    DEFINE PUBLIC PROPERTY totalPaid AS DECIMAL NO-UNDO 
        GET.
        SET. 
        
    CONSTRUCTOR PUBLIC Order (  ):
        /* start the state machine */
        orderStateMachine = NEW OrderStateMachine(THIS-OBJECT).
    END CONSTRUCTOR.

    METHOD PUBLIC VOID addPayment(ipdAmount AS DECIMAL):
        totalPaid = totalPaid + ipdAmount.
    END METHOD.

END CLASS.