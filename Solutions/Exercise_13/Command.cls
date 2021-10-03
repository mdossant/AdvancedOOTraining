/*------------------------------------------------------------------------
  File        : Command
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

CLASS Exercise_13.Command: 
    
    DEFINE PUBLIC PROPERTY gcMethod AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY gcReceiver AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY objParams AS Progress.Lang.ParameterList NO-UNDO 
        GET.
        SET. 

    METHOD PUBLIC VOID execute(  ):
        DEFINE VARIABLE objReceiver AS Progress.Lang.Object    NO-UNDO.
        DEFINE VARIABLE objMethod   AS Progress.Reflect.Method NO-UNDO.

        objReceiver = DYNAMIC-NEW gcReceiver().
        objMethod = objReceiver:GetClass():GetMethod(gcMethod, objParams).
        objMethod:Invoke(objReceiver, objParams).
    END METHOD.

END CLASS.