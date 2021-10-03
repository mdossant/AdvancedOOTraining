/*------------------------------------------------------------------------
  File        : UbuntuWidgetFactory
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Creational.AbstractFactory.Factory.*.
USING Creational.AbstractFactory.Ubuntu.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.AbstractFactory.Factory.UbuntuWidgetFactory INHERITS WidgetFactory: 

    METHOD OVERRIDE PUBLIC FactoryScrollBar CreateScrollBar ():
        RETURN NEW UbuntuScrollBar().
    END METHOD.

    METHOD OVERRIDE PUBLIC FactoryWindow CreateWindow ():
        RETURN NEW UbuntuWindow().
    END METHOD.

    METHOD OVERRIDE PUBLIC FactoryButton CreateButton ():
        RETURN NEW UbuntuButton().
    END METHOD.
    
END CLASS.