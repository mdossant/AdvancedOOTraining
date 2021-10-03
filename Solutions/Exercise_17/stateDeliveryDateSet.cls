/*------------------------------------------------------------------------
  File        : stateDeliveryDateSet
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

CLASS Exercise_17.stateDeliveryDateSet INHERITS State: 

    METHOD PUBLIC VOID handoverCarKeys(objOrderStateMachine as OrderStateMachine):
        objOrderStateMachine:setState(NEW stateCarDelivered()).
    END METHOD.

END CLASS.