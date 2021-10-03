/*------------------------------------------------------------------------
  File        : Cyclist
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Structural.Adapter.Cycling.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Structural.Adapter.Cycling.Cyclist: 
        
    DEFINE PRIVATE PROPERTY myBicycle AS Bicycle NO-UNDO 
        GET.
        SET.

    DEFINE PRIVATE PROPERTY myRooftopRack AS RooftopRack NO-UNDO 
        GET.
        SET.

    CONSTRUCTOR PUBLIC Cyclist (bicycleToRide AS Bicycle, rooftopRackToUse AS RooftopRack):
        ASSIGN
            myBicycle     = bicycleToRide
            myRooftopRack = rooftopRackToUse.
    END CONSTRUCTOR.

    METHOD PUBLIC VOID Mount ():
        myRooftopRack:Load(myBicycle).
    END METHOD.

END CLASS.