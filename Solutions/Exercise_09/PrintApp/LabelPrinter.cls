/*------------------------------------------------------------------------
   File        : LabelPrinter
   Purpose     : 
   Syntax      : 
   Description : 
   Author(s)   : mdossant
   Created     : Sun Oct 03 07:53:14 EDT 2021
   Notes       : 
 ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_09.PrintApp.*.
USING Exercise_09.PrintApp.Builder.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_09.PrintApp.LabelPrinter: 

    DEFINE PRIVATE PROPERTY printerLocation AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PRIVATE PROPERTY paperType AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PRIVATE PROPERTY printerName AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PRIVATE PROPERTY printerType AS CHARACTER NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR PUBLIC LabelPrinter (builder AS PrinterBuilder):
        ASSIGN
            printerLocation = builder:printerLocation
            paperType       = builder:paperType
            printerName     = builder:printerName
            printerType     = builder:printerType.
    END CONSTRUCTOR.

    METHOD PUBLIC VOID print (aLabel AS PrintLabel):
        MESSAGE SUBSTITUTE("Label &1 with barcode &2 has been printed on printer &3", aLabel:labelId, aLabel:labelBarcode, printerName) VIEW-AS ALERT-BOX.
    END METHOD.

END CLASS.