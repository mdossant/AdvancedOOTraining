/*------------------------------------------------------------------------
   File        : PrinterBuilder
   Purpose     : 
   Syntax      : 
   Description : 
   Author(s)   : mdossant
   Created     : Sun Oct 03 08:32:37 EDT 2021
   Notes       : 
 ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_09.PrintApp.Builder.PrinterBuilder ABSTRACT: 

    DEFINE PUBLIC PROPERTY printerLocation AS CHARACTER NO-UNDO
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY paperType AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY printerName AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY printerType AS CHARACTER NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR PUBLIC PrinterBuilder (thePrinterLocation AS CHARACTER, thePaperType AS CHARACTER, thePrinterName AS CHARACTER, thePrinterType AS CHARACTER):
        ASSIGN
            printerLocation = thePrinterLocation
            paperType       = thePaperType
            printerName     = thePrinterName
            printerType     = thePrinterType.
    END CONSTRUCTOR.

END CLASS.