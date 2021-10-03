@openapi.openedge.export FILE(type="REST", executionMode="singleton", useReturnValue="false", writeDataSetBeforeImage="false").
@progress.service.resource FILE(name="Car", URI="/Car", schemaName="", schemaFile="").
 
/*------------------------------------------------------------------------
   File        : Car
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

CLASS Exercise_13.Car: 

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    @openapi.openedge.export(type="REST", useReturnValue="false", writeDataSetBeforeImage="false").
    @progress.service.resourceMapping(type="REST", operation="invoke", URI="/addFuel", alias="", mediaType="application/json").
    METHOD PUBLIC VOID addFuel(INPUT ipiLiters AS INTEGER):
        
        MESSAGE PROGRAM-NAME(1) ipiLiters ' GALLONS added'
            VIEW-AS ALERT-BOX.

    END METHOD.

END CLASS.