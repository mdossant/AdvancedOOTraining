/*------------------------------------------------------------------------
    File        : TestPrinter1
    Purpose     : 
    Syntax      :
    Description : 
    Author(s)   : 
    Created     : 
    Notes       :
  ----------------------------------------------------------------------*/

USING Exercise_02.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objBook         AS Book.
DEFINE VARIABLE objPrintMessage AS PrintMessage.
DEFINE VARIABLE objPrintLog     AS PrintLog.

ASSIGN 
    objBook         = NEW Book()
    objPrintMessage = NEW PrintMessage()
    objPrintLog     = NEW PrintLog().
       
objPrintMessage:printPage(objBook:getCurrentPage()).
objPrintLog:printPage(objBook:getCurrentPage()).

