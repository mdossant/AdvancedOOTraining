/*------------------------------------------------------------------------
    File        : RooftopRack
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   :
    Created     :
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Structural.Adapter.Cycling.*.

INTERFACE Structural.Adapter.Cycling.RooftopRack:  
    
    METHOD PUBLIC VOID Load (bicycleToLoad AS Bicycle).

END INTERFACE.