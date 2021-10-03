/*------------------------------------------------------------------------
  File        : Book
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   : 
  Created     : 
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_01.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_01.Book: 

    DEFINE PUBLIC PROPERTY Title AS CHARACTER NO-UNDO 
        GET.
        PRIVATE SET. 
    
    DEFINE PUBLIC PROPERTY Author AS CHARACTER NO-UNDO 
        GET.
        PRIVATE SET. 

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC VOID printCurrentPage(  ):
        
        MESSAGE "Once upon a time..." VIEW-AS ALERT-BOX.

    END METHOD.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC VOID turnPage(  ):
        
        RETURN.

    END METHOD.    

END CLASS.