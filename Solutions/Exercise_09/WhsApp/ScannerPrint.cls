/*------------------------------------------------------------------------
    File        : ScannerPrint
    Purpose     : Adapter class for PrintApp.LabelPrinter class
    Syntax      : 
    Description : 
    Author(s)   : mdossant
    Created     : Sun Oct 03 16:41:20 EDT 2021
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_09.PrintApp.*.
USING Exercise_09.PrintApp.Builder.AcmePrinter.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_09.WhsApp.ScannerPrint: 

    DEFINE PRIVATE PROPERTY objLabelPrinter AS LabelPrinter NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR PUBLIC ScannerPrint ():
        objLabelPrinter = NEW LabelPrinter(NEW AcmePrinter("Warehouse")).
    END CONSTRUCTOR.

    METHOD PUBLIC VOID printWarehouseLabel (theBarcode AS CHARACTER):
        objLabelPrinter:print(NEW PrintLabel("WHS12345", theBarcode)).
    END METHOD.
    
END CLASS.