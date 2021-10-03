/*------------------------------------------------------------------------
    File        : testCyclist
    Purpose     : 
    Syntax      :
    Description : 
    Author(s)   :
    Created     :
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

USING Structural.Adapter.Cycling.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

//NEW Cyclist (NEW QuickReleaseBicycle(), NEW QuickReleaseBicycleTray()):Mount().
NEW Cyclist (NEW ThruAxleBicycle(), NEW MountAdapter(NEW QuickReleaseBicycleTray())):Mount().