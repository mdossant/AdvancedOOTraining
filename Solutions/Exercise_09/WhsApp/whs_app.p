/*------------------------------------------------------------------------
    File        : whs_app.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : mdossant
    Created     : Sun Oct 03 16:58:28 EDT 2021
    Notes       :
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_09.WhsApp.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objScanner AS Scanner NO-UNDO.

objScanner = NEW Scanner().
objScanner:scan().
objScanner:printProductBarcodeLabel().