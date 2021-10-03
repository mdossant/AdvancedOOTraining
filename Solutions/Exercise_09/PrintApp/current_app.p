/*------------------------------------------------------------------------
    File        : current_app.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : mdossant
    Created     : Sun Oct 03 09:56:48 EDT 2021
    Notes       :
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_09.PrintApp.*.
USING Exercise_09.PrintApp.Builder.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objPrinterBuilder AS PrinterBuilder NO-UNDO.
DEFINE VARIABLE objPrinter        AS LabelPrinter   NO-UNDO.
DEFINE VARIABLE objLabel          AS PrintLabel     NO-UNDO.

// print a label
ASSIGN
    objPrinterBuilder = NEW ZebraPrinter("Finance")
    objPrinter        = NEW LabelPrinter(objPrinterBuilder)
    objLabel          = NEW PrintLabel("LBL12345", "12345678").    

objPrinter:print(objLabel).

// print another label
NEW LabelPrinter(NEW EpsonPrinter("HR")):print(NEW PrintLabel("LBL33333", "44332412")).

FINALLY:
    DELETE OBJECT objLabel NO-ERROR.
    DELETE OBJECT objPrinter NO-ERROR.
    DELETE OBJECT objPrinterBuilder NO-ERROR.    
END FINALLY.

// end