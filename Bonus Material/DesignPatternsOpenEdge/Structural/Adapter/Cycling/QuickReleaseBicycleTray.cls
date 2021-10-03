  /*------------------------------------------------------------------------
    File        : QuickReleaseBicycleTray
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

CLASS Structural.Adapter.Cycling.QuickReleaseBicycleTray IMPLEMENTS RooftopRack: 

    METHOD PUBLIC VOID Load (bicycleToLoad AS Bicycle):
        // place bicycle on tray
        // clamp down fork and lock
        // strap rear wheel
        // inspect and ensure bike is properly loaded and nothing is amiss
        MESSAGE SUBSTITUTE("&1 BICYCLE LOADED ON QUICK RELEASE TRAY", bicycleToLoad:bicycleType) VIEW-AS ALERT-BOX.
    END METHOD.

END CLASS.