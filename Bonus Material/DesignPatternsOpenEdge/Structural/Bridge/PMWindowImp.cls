/*------------------------------------------------------------------------
    File        : PMWindowImp
    Purpose     : 
    SyntaPM      : 
    Description : 
    Author(s)   :
    Created     :
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Structural.Bridge.WindowImp.

CLASS Structural.Bridge.PMWindowImp IMPLEMENTS WindowImp:  

    DEFINE PUBLIC PROPERTY windowType AS CHARACTER NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR PMWindowImp (  ):
        windowType = "PMWINDOW".
    END CONSTRUCTOR.
    
    METHOD PUBLIC VOID DevDrawText (pText AS CHARACTER):
        PMDrawText(pText).
    END METHOD.
  
    METHOD PUBLIC VOID DevDrawLine (pPosition AS CHARACTER):
        PMDrawLine(pPosition).
    END METHOD.
  
    METHOD PRIVATE VOID PMDrawText (pText AS CHARACTER):
        MESSAGE "PMDrawText" pText VIEW-AS ALERT-BOX.
    END METHOD.
  
    METHOD PRIVATE VOID PMDrawLine (pPosition AS CHARACTER):
        MESSAGE "PMDrawLine" pPosition VIEW-AS ALERT-BOX.
    END METHOD.

END CLASS.