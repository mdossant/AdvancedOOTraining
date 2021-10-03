/*------------------------------------------------------------------------
  File        : PrintLog
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

CLASS Exercise_02.PrintLog IMPLEMENTS Printer: 

    METHOD PUBLIC VOID printPage( INPUT ipcText AS CHARACTER ):
        
        log-manager:LOGFILE-NAME = "logging.txt".
        LOG-MANAGER:WRITE-MESSAGE(ipcText).

    END METHOD.

END CLASS.