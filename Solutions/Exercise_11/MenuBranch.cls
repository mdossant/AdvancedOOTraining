/*------------------------------------------------------------------------
  File        : MenuBranch
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_11.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_11.MenuBranch INHERITS MenuDecorator: 

    DEFINE PROTECTED TEMP-TABLE ttMenu
        FIELD MenuLeaf AS Progress.Lang.Object.

    CONSTRUCTOR PUBLIC MenuBranch ( INPUT objMenuToBeDecorated AS Menu ):
        SUPER (INPUT objMenuToBeDecorated).
    END CONSTRUCTOR.

    METHOD PUBLIC OVERRIDE VOID print (  ):
        SUPER:print().
        FOR EACH ttMenu:
            CAST(ttMenu.MenuLeaf, Menu):print().
        END.
    END METHOD.
    
    METHOD PUBLIC VOID add(objMenu AS Menu):
        CREATE ttMenu.
        ttMenu.MenuLeaf = objMenu.
    END METHOD.

END CLASS.