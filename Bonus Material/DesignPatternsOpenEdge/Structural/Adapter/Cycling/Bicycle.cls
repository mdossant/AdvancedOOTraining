/*------------------------------------------------------------------------
  File        : Bicycle
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Structural.Adapter.Cycling.Bicycle ABSTRACT: 

    DEFINE PUBLIC PROPERTY bicycleType AS CHARACTER NO-UNDO 
        GET.
        SET. 

END CLASS.