/*------------------------------------------------------------------------
  File        : MacOSXWindow
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.AbstractFactory.MacOSX.MacOSXWindow INHERITS Creational.AbstractFactory.Factory.FactoryWindow: 

    CONSTRUCTOR PUBLIC MacOSXWindow ():
        widgetType = "MacOSX Window".
    END CONSTRUCTOR.

END CLASS.