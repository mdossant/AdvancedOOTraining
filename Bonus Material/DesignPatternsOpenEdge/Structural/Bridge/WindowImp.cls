/*------------------------------------------------------------------------
    File        : WindowImp
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : mdossant
    Created     : Sun Dec 06 17:27:40 EST 2020
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.

INTERFACE Structural.Bridge.WindowImp:
    
    DEFINE PUBLIC PROPERTY windowType AS CHARACTER NO-UNDO 
        GET.
        SET. 

    METHOD PUBLIC VOID DevDrawText (pText AS CHARACTER).
  
    METHOD PUBLIC VOID DevDrawLine (pPosition AS CHARACTER).

END INTERFACE.