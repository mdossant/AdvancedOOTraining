/*------------------------------------------------------------------------
  File        : Batcher
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_13.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_13.Batcher: 
    
    DEFINE TEMP-TABLE ttCommand 
        FIELD iOrder    AS INTEGER
        FIELD objObject AS Progress.Lang.Object.    

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC VOID addCommand(objCommand AS Command, ipiOrder AS INTEGER):
        
        CREATE ttCommand.
        ASSIGN 
            iOrder    = ipiOrder
            objObject = objCommand.

    END METHOD.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC VOID executeCommands(  ):
        
        FOR EACH ttCommand BY iOrder:
            CAST(objObject,Command):execute().
            DELETE ttCommand.
        END.
        
    END METHOD.    

END CLASS.