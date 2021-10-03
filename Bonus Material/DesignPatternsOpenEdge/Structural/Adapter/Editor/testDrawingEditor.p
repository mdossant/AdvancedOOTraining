USING Structural.Adapter.Editor.*.

DEFINE VARIABLE aDrawingEditor AS DrawingEditor NO-UNDO.

aDrawingEditor = NEW DrawingEditor().

aDrawingEditor:AddShape("Line").
aDrawingEditor:AddShape("Text").
//aDrawingEditor:AddShape("Circle").
