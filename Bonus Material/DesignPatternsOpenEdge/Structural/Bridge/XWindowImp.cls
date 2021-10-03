/*------------------------------------------------------------------------
    File        : XWindowImp
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   :
    Created     :
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Structural.Bridge.*.

CLASS Structural.Bridge.XWindowImp IMPLEMENTS WindowImp:  

    DEFINE PUBLIC PROPERTY windowType AS CHARACTER NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR XWindowImp (  ):
        windowType = "XWINDOW".
    END CONSTRUCTOR.
    
    METHOD PUBLIC VOID DevDrawText (pText AS CHARACTER):
        XDrawText(pText).
    END METHOD.
  
    METHOD PUBLIC VOID DevDrawLine (pPosition AS CHARACTER):
        XDrawLine(pPosition).
    END METHOD.
  
    METHOD PRIVATE VOID XDrawText (pText AS CHARACTER):
        MESSAGE "XDrawText" pText VIEW-AS ALERT-BOX.
    END METHOD.
  
    METHOD PRIVATE VOID XDrawLine (pPosition AS CHARACTER):
        MESSAGE "XDrawLine" pPosition VIEW-AS ALERT-BOX.
    END METHOD.
            
END CLASS.