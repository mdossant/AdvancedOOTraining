USING Progress.Lang.*.
USING Exercise_15.*.

CLASS Exercise_15.StringOutputStream INHERITS Progress.IO.OutputStream:
    DEFINE PUBLIC PROPERTY lcVar AS LONGCHAR GET.
    PRIVATE SET.
   
    METHOD OVERRIDE INT64 Write(INPUT pmData AS MEMPTR, INPUT offset AS INT64, INPUT len AS INT64):
            THIS-OBJECT:lcVar = GET-STRING(pmData, 1).
            RETURN GET-SIZE(pmData).
    END METHOD.
   
    METHOD OVERRIDE INT64 Write(INPUT lc AS LONGCHAR):
    END METHOD.
    
    METHOD OVERRIDE INT64 Write(INPUT lc AS CHARACTER):
    END METHOD.
END CLASS.

