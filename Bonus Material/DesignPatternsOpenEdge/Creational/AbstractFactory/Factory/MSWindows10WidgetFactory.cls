/*------------------------------------------------------------------------
  File        : MSWindows10WidgetFactory
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Creational.AbstractFactory.Factory.*.
USING Creational.AbstractFactory.MSWindows10.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.AbstractFactory.Factory.MSWindows10WidgetFactory INHERITS WidgetFactory: 

    METHOD OVERRIDE PUBLIC FactoryScrollBar CreateScrollBar ():
        RETURN NEW MSWindows10ScrollBar().
    END METHOD.

    METHOD OVERRIDE PUBLIC FactoryWindow CreateWindow ():
        RETURN NEW MSWindows10Window().
    END METHOD.

    METHOD OVERRIDE PUBLIC FactoryButton CreateButton ():
        RETURN NEW MSWindows10Button().
    END METHOD.
    
END CLASS.