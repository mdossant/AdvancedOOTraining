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
USING Exercise_02.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_02.Book: 

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

    METHOD PUBLIC CHARACTER getCurrentPage(  ):
        
        RETURN "Once upon a time...".

    END METHOD.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC VOID turnPage(  ):
        
        RETURN.

    END METHOD.    

END CLASS.