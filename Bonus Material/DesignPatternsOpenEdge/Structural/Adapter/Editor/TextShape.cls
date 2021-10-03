/*------------------------------------------------------------------------
 File        : TextShape
 Purpose     : 
 Syntax      : 
 Description : 
 Author(s)   :
 Created     :
 Notes       : This is an object adapter as it relies on object composition
 instead of inheritance (class adapter)
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Structural.Adapter.Editor.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Structural.Adapter.Editor.TextShape INHERITS Shape: 

    DEFINE PRIVATE PROPERTY textView AS TextView NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR PUBLIC TextShape ():
        textView = NEW TextView().
    END CONSTRUCTOR.
    
    METHOD OVERRIDE PUBLIC CHARACTER BoundingBox ():
        RETURN textView:GetExtent() + " for " + STRING(THIS-OBJECT).
    END METHOD.

    METHOD OVERRIDE PUBLIC CHARACTER CreateManipulator ():
        RETURN "Manipulator for " + STRING(THIS-OBJECT).
    END METHOD.

END CLASS.