/*------------------------------------------------------------------------
  File        : MacOSXScrollBar
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.AbstractFactory.MacOSX.MacOSXScrollBar INHERITS Creational.AbstractFactory.Factory.FactoryScrollBar: 

    CONSTRUCTOR PUBLIC MacOSXScrollBar ():
        widgetType = "MacOSX ScrollBar".
    END CONSTRUCTOR.

END CLASS.