/*------------------------------------------------------------------------
  File        : TransientWindow
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Structural.Bridge.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Structural.Bridge.TransientWindow INHERITS Window: 

    CONSTRUCTOR TransientWindow (pObjWindowImp AS WindowImp):
        SUPER(pObjWindowImp).
    END CONSTRUCTOR.

    METHOD PUBLIC VOID DrawCloseBox (  ):
        SUPER:DrawRect(100, 100, 100, 100).
    END METHOD.

END CLASS.