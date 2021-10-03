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
USING Exercise_10.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_10.MenuBranch IMPLEMENTS Menu: 

    DEFINE PROTECTED TEMP-TABLE ttMenu
        FIELD MenuNode AS Progress.Lang.Object.

    DEFINE PUBLIC PROPERTY Label AS CHARACTER NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR PUBLIC MenuBranch (INPUT ipcLabel AS CHARACTER):
        THIS-OBJECT:Label = ipcLabel.
    END CONSTRUCTOR.

    METHOD PUBLIC VOID print(  ):
        PUT THIS-OBJECT:Label SKIP.
        
        FOR EACH ttMenu:
            CAST(ttMenu.MenuNode, Menu):print().
        END.
    END METHOD.
    
    METHOD PUBLIC VOID add(objMenu AS Menu):
        CREATE ttMenu.
        ttMenu.MenuNode = objMenu.
    END METHOD.

END CLASS.