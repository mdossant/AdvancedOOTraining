/*------------------------------------------------------------------------
    File        : testMySingletonClass
    Purpose     :
    Syntax      :
    Description :
    Author(s)   : 
    Created     :
    Notes       :
  ----------------------------------------------------------------------*/

USING Exercise_08.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objMySingletonClass      AS MySingletonClass NO-UNDO.
DEFINE VARIABLE objMyOtherSingletonClass AS MySingletonClass NO-UNDO.

ASSIGN 
    objMySingletonClass            = MySingletonClass:getInstance()
    objMySingletonClass:MyProperty = 42.

MESSAGE objMySingletonClass objMySingletonClass:MyProperty
    VIEW-AS ALERT-BOX.

ASSIGN 
    objMyOtherSingletonClass = MySingletonClass:getInstance().

MESSAGE objMyOtherSingletonClass objMyOtherSingletonClass:MyProperty
    VIEW-AS ALERT-BOX.