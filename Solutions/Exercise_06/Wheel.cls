/*------------------------------------------------------------------------
    File        : Wheel
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   :
    Created     :
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_06.*.

INTERFACE Exercise_06.Wheel:  
  
    DEFINE PUBLIC PROPERTY Price AS DECIMAL NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY Size AS INTEGER NO-UNDO 
        GET.
        SET. 

END INTERFACE.