/*------------------------------------------------------------------------
  File        : stateProductionStarted
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

CLASS Exercise_17.stateProductionStarted INHERITS State: 

    METHOD PUBLIC VOID factoryCompletesCar(objOrderStateMachine AS OrderStateMachine):
        objOrderStateMachine:setState(NEW stateProductionCompleted()).
    END METHOD.

    METHOD PUBLIC VOID goBackToProd(objOrderStateMachine AS OrderStateMachine):
        MESSAGE "call ERP API to do whatever" VIEW-AS ALERT-BOX.
        MESSAGE "set some values on these tables" VIEW-AS ALERT-BOX.
        objOrderStateMachine:setState(NEW stateProductionCompleted()).
    END METHOD.

END CLASS.