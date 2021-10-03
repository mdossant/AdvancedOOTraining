/*------------------------------------------------------------------------
  File        : DrawingEditor
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : Drawing editor uses Shape objects. It wants to reuse TextView class,
  however, its interface does not conform to the needs of the drawing editor. Thus,
  an adapter was created, called TextShape.
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Structural.Adapter.Editor.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Structural.Adapter.Editor.DrawingEditor: 

    METHOD PUBLIC VOID AddShape (shapeType AS CHARACTER):
        DEFINE VARIABLE shape AS Shape NO-UNDO.
        CASE shapeType:
            WHEN "Line" THEN 
                shape = NEW Line().
            WHEN "Text" THEN 
                shape = NEW TextShape().
            OTHERWISE
            UNDO, THROW NEW Progress.Lang.AppError("DrawingEditor says: I don't know this shape. What is a " + shapeType + "?",1).
        END CASE.
        MESSAGE
            shape:BoundingBox() SKIP
            shape:CreateManipulator()
            VIEW-AS ALERT-BOX.
    END METHOD.

END CLASS.