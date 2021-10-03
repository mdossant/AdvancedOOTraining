/*------------------------------------------------------------------------
  File        : BMW
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

CLASS Exercise_07.BMW IMPLEMENTS Car: 
    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    DEFINE PUBLIC PROPERTY Brand AS CHARACTER NO-UNDO INITIAL "BMW"
        GET.

END CLASS.