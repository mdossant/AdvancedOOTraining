/*------------------------------------------------------------------------
  File        : QuickReleaseBicycle
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

CLASS Structural.Adapter.Cycling.QuickReleaseBicycle INHERITS Bicycle: 
        
    CONSTRUCTOR PUBLIC QuickReleaseBicycle ():
        bicycleType = "QuickRelease".
    END CONSTRUCTOR.

END CLASS.