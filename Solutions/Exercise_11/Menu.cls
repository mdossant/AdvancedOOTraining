/*------------------------------------------------------------------------
    File        : Menu
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   :
    Created     :
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_11.*.

INTERFACE Exercise_11.Menu:  
  
    DEFINE PUBLIC PROPERTY Label AS CHARACTER NO-UNDO 
        GET.
        SET. 

    METHOD PUBLIC VOID print (  ).

END INTERFACE.