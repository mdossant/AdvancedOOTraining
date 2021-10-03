/*------------------------------------------------------------------------
  File        : MSWindows10Window
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.AbstractFactory.MSWindows10.MSWindows10Window INHERITS Creational.AbstractFactory.Factory.FactoryWindow: 

    CONSTRUCTOR PUBLIC MSWindows10Window ():
        widgetType = "MSWindows10 Window".
    END CONSTRUCTOR.

END CLASS.