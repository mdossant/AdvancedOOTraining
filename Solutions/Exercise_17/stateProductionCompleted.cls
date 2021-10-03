/*------------------------------------------------------------------------
  File        : stateProductionCompleted
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

CLASS Exercise_17.stateProductionCompleted INHERITS State: 

    METHOD PUBLIC VOID customerPaysFullAmount(objOrderStateMachine as OrderStateMachine):
        objOrderStateMachine:setState(NEW stateDeliveryDateSet()).
    END METHOD.
    
END CLASS.