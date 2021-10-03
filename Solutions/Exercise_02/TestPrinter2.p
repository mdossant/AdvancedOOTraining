/*------------------------------------------------------------------------
    File        : TestPrinter2
    Purpose     :
    Syntax      :
    Description : 
    Author(s)   : 
    Created     :
    Notes       :
  ----------------------------------------------------------------------*/

USING Exercise_02.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objBook    AS Book.
DEFINE VARIABLE objPrinter AS Printer.

objBook = NEW Book().
objPrinter = NEW PrintMessage().
/*objPrinter = NEW PrintLog().*/
       
objPrinter:printPage(objBook:getCurrentPage()).