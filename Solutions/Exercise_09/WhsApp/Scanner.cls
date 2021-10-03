/*------------------------------------------------------------------------
    File        : Scanner
    Purpose     : Warehouse scanning app used during receving to print barcode labels
    Syntax      : 
    Description : 
    Author(s)   : mdossant
    Created     : Sun Oct 03 16:52:10 EDT 2021
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_09.WhsApp.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_09.WhsApp.Scanner: 

    DEFINE PUBLIC PROPERTY objScannerPrint AS Exercise_09.WhsApp.ScannerPrint NO-UNDO 
        GET.
        SET. 

    DEFINE PRIVATE PROPERTY scannedProduct AS CHARACTER NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR PUBLIC Scanner ():
        objScannerPrint = NEW ScannerPrint().
    END CONSTRUCTOR.

    METHOD PUBLIC VOID scan ():
        scannedProduct = STRING(TIME * 2.2, "9999999").
    END METHOD.
    
    METHOD PUBLIC VOID printProductBarcodeLabel ():
        objScannerPrint:printWarehouseLabel(scannedProduct).
    END METHOD.
    
END CLASS.