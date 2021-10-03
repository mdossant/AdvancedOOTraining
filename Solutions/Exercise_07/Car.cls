/*------------------------------------------------------------------------
  File        : Car
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_07.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

INTERFACE Exercise_07.Car: 

    DEFINE PUBLIC PROPERTY Brand AS CHARACTER NO-UNDO
        GET.

END INTERFACE.