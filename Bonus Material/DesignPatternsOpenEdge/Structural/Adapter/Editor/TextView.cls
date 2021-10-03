/*------------------------------------------------------------------------
  File        : TextView
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Structural.Adapter.Editor.TextView:

    METHOD PUBLIC CHARACTER GetExtent ():
        RETURN "Text Extent".
    END METHOD.

END CLASS.