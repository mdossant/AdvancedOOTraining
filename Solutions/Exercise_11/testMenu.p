/*------------------------------------------------------------------------
    File        : createMenu
    Purpose     :
    Syntax      :
    Description :
    Author(s)   :
    Created     :
    Notes       :
  ----------------------------------------------------------------------*/

USING Exercise_11.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objRoot   AS MenuBranch NO-UNDO.
DEFINE VARIABLE objBranch AS MenuBranch NO-UNDO.

ASSIGN 
    objRoot   = NEW MenuBranch(NEW MenuElement("Root"))
    objBranch = NEW MenuBranch(NEW MenuElement("-File")).
objRoot:add(objBranch).
objBranch:add(NEW MenuElement("--New")).
objBranch:add(NEW MenuElement("--Open")).
objBranch:add(NEW MenuElement("--Save")).
objBranch = NEW MenuBranch(NEW MenuElement("-Edit")).
objRoot:add(objBranch).
objBranch:add(NEW MenuElement("--Cut")).
objBranch:add(NEW MenuElement("--Copy")).
objBranch:add(NEW MenuElement("--Paste")).

OUTPUT TO "menu_with_decorator.txt".
objRoot:print().
    

