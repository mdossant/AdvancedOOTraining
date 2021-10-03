/*------------------------------------------------------------------------
  File        : AlloyWheel
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_06.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_06.AlloyWheel IMPLEMENTS Wheel: 

    DEFINE PUBLIC PROPERTY Price AS DECIMAL INITIAL 180 NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY Size AS INTEGER INITIAL 18 NO-UNDO 
        GET.
        SET. 

END CLASS.