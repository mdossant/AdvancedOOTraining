/*------------------------------------------------------------------------
  File        : CarMemento
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_15.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_15.Memento SERIALIZABLE: 
    
    DEFINE VARIABLE lcState AS LONGCHAR NO-UNDO. 

    METHOD PUBLIC VOID setState(iplcVar AS LONGCHAR):
        lcState = iplcVar.
    END METHOD.
    
    METHOD PUBLIC LONGCHAR getState():
        RETURN lcState.
    END METHOD.

END CLASS.