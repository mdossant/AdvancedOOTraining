/*------------------------------------------------------------------------
  File        : MenuElement
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

CLASS Exercise_11.MenuElement IMPLEMENTS Menu: 

    DEFINE PUBLIC PROPERTY Label AS CHARACTER NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR PUBLIC MenuElement (INPUT ipcLabel AS CHARACTER):
        THIS-OBJECT:Label = ipcLabel.
    END CONSTRUCTOR.

    METHOD PUBLIC VOID print (  ):
        PUT THIS-OBJECT:Label SKIP.
    END METHOD.

END CLASS.