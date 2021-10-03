/*------------------------------------------------------------------------
 File        : Line
 Purpose     : 
 Syntax      : 
 Description : 
 Author(s)   :
 Created     :
 Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Structural.Adapter.Editor.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Structural.Adapter.Editor.Line INHERITS Shape: 

    METHOD OVERRIDE PUBLIC CHARACTER BoundingBox ():
        RETURN "Bounding box for " + STRING(THIS-OBJECT).
    END METHOD.

    METHOD OVERRIDE PUBLIC CHARACTER CreateManipulator ():
        RETURN "Manipulator for " + STRING(THIS-OBJECT).
    END METHOD.

END CLASS.