/*------------------------------------------------------------------------
    File        : testCommand
    Purpose     :
    Syntax      :
    Description : 
    Author(s)   :
    Created     :
    Notes       :
  ----------------------------------------------------------------------*/

USING Exercise_13.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objCommand       AS Command                     NO-UNDO.
DEFINE VARIABLE objParameterList AS Progress.Lang.ParameterList NO-UNDO.
DEFINE VARIABLE objBatcher       AS Batcher                     NO-UNDO. 

ASSIGN 
    objBatcher            = NEW Batcher()
    objCommand            = NEW Command()
    objCommand:gcReceiver = "Exercise_13.Car"
    objCommand:gcMethod   = "addFuel"
    objParameterList      = NEW Progress.Lang.ParameterList(1).

objParameterList:SetParameter(1,"INTEGER","INPUT", 25).
objCommand:objParams = objParameterList.
objBatcher:addCommand(objCommand,1).

ASSIGN 
    objCommand            = NEW Command()
    objCommand:gcReceiver = "Exercise_13.Car"
    objCommand:gcMethod   = "addFuel"
    objParameterList      = NEW Progress.Lang.ParameterList(1).

objParameterList:SetParameter(1,"INTEGER","INPUT", 10).
objCommand:objParams = objParameterList.
objBatcher:addCommand(objCommand,2).

MESSAGE 'Will execute commands...' VIEW-AS ALERT-BOX.

objBatcher:executeCommands().