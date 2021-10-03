/*------------------------------------------------------------------------
   File        : PrintLabel
   Purpose     : 
   Syntax      : 
   Description : 
   Author(s)   : mdossant
   Created     : Sun Oct 03 08:27:50 EDT 2021
   Notes       : 
 ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_09.PrintApp.PrintLabel: 

    DEFINE PUBLIC PROPERTY labelBarcode AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY labelId AS CHARACTER NO-UNDO 
        GET.
        SET. 
    
    CONSTRUCTOR PUBLIC PrintLabel (theLabelId AS CHARACTER, theLabelBarcode AS CHARACTER):
        ASSIGN
            labelId      = theLabelId
            labelBarcode = theLabelBarcode.
    END CONSTRUCTOR.
    
END CLASS.