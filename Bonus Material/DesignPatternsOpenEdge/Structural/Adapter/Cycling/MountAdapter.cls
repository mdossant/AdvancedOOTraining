/*------------------------------------------------------------------------
  File        : MountAdapter
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

CLASS Structural.Adapter.Cycling.MountAdapter IMPLEMENTS RooftopRack: 

    DEFINE PUBLIC PROPERTY myTray AS QuickReleaseBicycleTray NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR PUBLIC MountAdapter (trayToUse AS QuickReleaseBicycleTray):
        myTray = trayToUse.
    END CONSTRUCTOR.
    
    METHOD PUBLIC VOID Load (INPUT bicycleToLoad AS Bicycle):
        RemoveThruAxle().
        InstallQRAdapter().
        myTray:Load(bicycleToLoad).
    END METHOD.

    METHOD PRIVATE VOID RemoveThruAxle ():
        MESSAGE "THRU AXLE REMOVED" VIEW-AS ALERT-BOX.
    END METHOD.

    METHOD PRIVATE VOID InstallQRAdapter ():
        MESSAGE "QR ADAPTER INSTALLED" VIEW-AS ALERT-BOX.
    END METHOD.

END CLASS.