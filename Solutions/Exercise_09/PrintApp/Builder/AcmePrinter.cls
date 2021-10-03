/*------------------------------------------------------------------------
   File        : AcmePrinter
   Purpose     : 
   Syntax      : 
   Description : 
   Author(s)   : mdossant
   Created     : Sun Oct 03 09:44:30 EDT 2021
   Notes       : 
 ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_09.PrintApp.Builder.PrinterBuilder.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_09.PrintApp.Builder.AcmePrinter INHERITS PrinterBuilder: 

    CONSTRUCTOR PUBLIC AcmePrinter (theLocation AS CHARACTER):
        SUPER(theLocation, "InkjetWhite", "WHSPRT-001", "AcmeXYZ").
    END CONSTRUCTOR.

END CLASS.