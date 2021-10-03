/*------------------------------------------------------------------------
   File        : EpsonPrinter
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

CLASS Exercise_09.PrintApp.Builder.EpsonPrinter INHERITS PrinterBuilder: 

    CONSTRUCTOR PUBLIC EpsonPrinter (theLocation AS CHARACTER):
        SUPER(theLocation, "LaserWhiteHeavy", "WHSPRT-002", "EpsonR45").
    END CONSTRUCTOR.

END CLASS.