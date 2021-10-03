/*------------------------------------------------------------------------
  File        : PrintMessage
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_02.Printer.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_02.PrintMessage IMPLEMENTS Printer: 

    METHOD PUBLIC VOID printPage( INPUT ipcText AS CHARACTER ):
        
        MESSAGE ipcText
            VIEW-AS ALERT-BOX.

    END METHOD.

END CLASS.