/*------------------------------------------------------------------------
  File        : Window
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Structural.Bridge.WindowImp.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Structural.Bridge.Window ABSTRACT:
    
    DEFINE PUBLIC PROPERTY objWindowImp AS WindowImp NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR Window (pObjWindowImp AS WindowImp):
        objWindowImp = pObjWindowImp.
    END CONSTRUCTOR.
    
    METHOD PUBLIC VOID DrawText (pText AS CHARACTER):
        objWindowImp:DevDrawText(pText).
    END METHOD.

    METHOD PUBLIC VOID DrawRect (top AS INTEGER, left AS INTEGER, right AS INTEGER, bottom AS INTEGER):
        objWindowImp:DevDrawLine("top" + STRING(top)).
        objWindowImp:DevDrawLine("left" + STRING(left)).
        objWindowImp:DevDrawLine("right" + STRING(right)).
        objWindowImp:DevDrawLine("bottom" + STRING(bottom)).
    END METHOD.

END CLASS.