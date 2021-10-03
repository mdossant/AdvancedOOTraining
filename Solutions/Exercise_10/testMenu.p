/*------------------------------------------------------------------------
    File        : createMenu
    Purpose     :
    Syntax      :
    Description :
    Author(s)   : 
    Created     :
    Notes       :
  ----------------------------------------------------------------------*/

USING Exercise_10.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objRoot   AS MenuBranch NO-UNDO.
DEFINE VARIABLE objBranch AS MenuBranch NO-UNDO.

ASSIGN 
    objRoot   = NEW MenuBranch("Root")
    objBranch = NEW MenuBranch("-File").
objRoot:add(objBranch).
objBranch:add(NEW MenuLeaf("--New")).
objBranch:add(NEW MenuLeaf("--Open")).
objBranch:add(NEW MenuLeaf("--Save")).
objBranch = NEW MenuBranch("-Edit").
objRoot:add(objBranch).
objBranch:add(NEW MenuLeaf("--Cut")).
objBranch:add(NEW MenuLeaf("--Copy")).
objBranch:add(NEW MenuLeaf("--Paste")).

OUTPUT TO "menu.txt".
//objBranch:print().
  new MenuLeaf("new menu option"):print()  

