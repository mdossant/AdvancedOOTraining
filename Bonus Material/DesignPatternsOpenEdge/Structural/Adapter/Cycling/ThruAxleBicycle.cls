/*------------------------------------------------------------------------
  File        : ThruAxleBicycle
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Structural.Adapter.Cycling.Bicycle.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Structural.Adapter.Cycling.ThruAxleBicycle INHERITS Bicycle: 
        
    CONSTRUCTOR PUBLIC ThruAxleBicycle ():
        bicycleType = "ThruAxle".
    END CONSTRUCTOR.

END CLASS.