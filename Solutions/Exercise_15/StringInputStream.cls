 /*------------------------------------------------------------------------
   File        : StringInputStream
   Purpose     : 
   Syntax      : 
   Description : 
   Author(s)   :
   Created     :
   Notes       : 
 ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Progress.IO.InputStream.
USING Exercise_15.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_15.StringInputStream INHERITS InputStream: 
    
    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    DEFINE PUBLIC PROPERTY lcVar AS LONGCHAR GET.
        PRIVATE SET.
        
    CONSTRUCTOR PUBLIC StringInputStream (iplcVal AS LONGCHAR):
        lcVar = iplcVal.
    END CONSTRUCTOR.

    METHOD OVERRIDE PUBLIC INT64 Read( INPUT target AS MEMPTR, INPUT offset AS INT64, INPUT length AS INT64 ):
        COPY-LOB lcVar TO target.
        RETURN GET-SIZE(target).
    END METHOD.

    METHOD OVERRIDE PUBLIC INT64 Read( INPUT delimiter0 AS CHARACTER, OUTPUT target AS LONGCHAR ):
    END METHOD.

    METHOD OVERRIDE PUBLIC INT64 Read( INPUT delimiter0 AS CHARACTER, OUTPUT target AS CHARACTER ):
    END METHOD.

END CLASS.