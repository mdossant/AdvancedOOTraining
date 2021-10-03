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
USING Exercise_10.*.

INTERFACE Exercise_10.Menu:  
  
    DEFINE PUBLIC PROPERTY Label AS CHARACTER NO-UNDO 
        GET.
        SET. 

    METHOD PUBLIC VOID print(  ).

END INTERFACE.