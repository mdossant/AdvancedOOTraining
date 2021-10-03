/*------------------------------------------------------------------------
  File        : IconWindow
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

CLASS Structural.Bridge.IconWindow INHERITS Window: 

    CONSTRUCTOR IconWindow (pObjWindowImp AS WindowImp):
        SUPER(pObjWindowImp).
    END CONSTRUCTOR.

    METHOD PUBLIC VOID DrawBorder (  ):
        SUPER:DrawRect(0, 0, 200, 200).
        SUPER:DrawText("THIS IS A SQUARE").
    END METHOD.

END CLASS.