/*------------------------------------------------------------------------
  File        : MacOSXWidgetFactory
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Creational.AbstractFactory.Factory.*.
USING Creational.AbstractFactory.MacOSX.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.AbstractFactory.Factory.MacOSXWidgetFactory INHERITS WidgetFactory: 

    METHOD OVERRIDE PUBLIC FactoryScrollBar CreateScrollBar ():
        RETURN NEW MacOSXScrollBar().
    END METHOD.

    METHOD OVERRIDE PUBLIC FactoryWindow CreateWindow ():
        RETURN NEW MacOSXWindow().
    END METHOD.

    METHOD OVERRIDE PUBLIC FactoryButton CreateButton ():
        RETURN NEW MacOSXButton().
    END METHOD.
    
END CLASS.