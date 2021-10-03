/*------------------------------------------------------------------------
   File        : ZebraPrinter
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

CLASS Exercise_09.PrintApp.Builder.ZebraPrinter INHERITS PrinterBuilder: 

    CONSTRUCTOR PUBLIC ZebraPrinter (theLocation AS CHARACTER):
        SUPER(theLocation, "Premium", "WHSPRT-003", "ZebraV123").
    END CONSTRUCTOR.

END CLASS.