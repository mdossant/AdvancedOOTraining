/*------------------------------------------------------------------------
  File        : UbuntuScrollBar
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.AbstractFactory.Ubuntu.UbuntuScrollBar INHERITS Creational.AbstractFactory.Factory.FactoryScrollBar: 

    CONSTRUCTOR PUBLIC UbuntuScrollBar ():
        widgetType = "Ubuntu ScrollBar".
    END CONSTRUCTOR.

END CLASS.