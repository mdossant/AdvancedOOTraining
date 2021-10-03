/*------------------------------------------------------------------------
  File        : Shape
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Structural.Adapter.Editor.Shape ABSTRACT: 

    METHOD PUBLIC ABSTRACT CHARACTER BoundingBox ().

    METHOD PUBLIC ABSTRACT CHARACTER CreateManipulator ().
    
END CLASS.