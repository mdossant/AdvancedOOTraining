/*------------------------------------------------------------------------
  File        : MenuLeaf
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

CLASS Exercise_10.MenuLeaf IMPLEMENTS Menu: 

    DEFINE PUBLIC PROPERTY Label AS CHARACTER NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR PUBLIC MenuLeaf (INPUT ipcLabel AS CHARACTER):
        THIS-OBJECT:Label = ipcLabel.
    END CONSTRUCTOR.

    METHOD PUBLIC VOID print(  ):
        
        PUT THIS-OBJECT:Label SKIP.

    END METHOD.

END CLASS.