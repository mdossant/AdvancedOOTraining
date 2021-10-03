/*------------------------------------------------------------------------
  File        : MenuDecorator
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

CLASS Exercise_11.MenuDecorator IMPLEMENTS Menu ABSTRACT: 

    DEFINE PROTECTED PROPERTY MenuToBeDecorated AS Menu NO-UNDO 
        GET.
        SET. 
    
    DEFINE PUBLIC PROPERTY Label AS CHARACTER NO-UNDO 
        GET():
            RETURN MenuToBeDecorated:Label.
        END GET.
        SET(INPUT ipcLabel AS CHARACTER):
            MenuToBeDecorated:Label = ipcLabel. 
        END SET.

    CONSTRUCTOR PUBLIC MenuDecorator (objMenuToBeDecorated AS Menu):
        MenuToBeDecorated = objMenuToBeDecorated.
    END CONSTRUCTOR.

    METHOD PUBLIC VOID print (  ):
        /* delegate to MenuElement */
        MenuToBeDecorated:print().
    END METHOD.

END CLASS.