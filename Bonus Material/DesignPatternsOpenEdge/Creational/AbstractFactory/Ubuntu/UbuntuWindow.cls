/*------------------------------------------------------------------------
  File        : UbuntuWindow
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.AbstractFactory.Ubuntu.UbuntuWindow INHERITS Creational.AbstractFactory.Factory.FactoryWindow: 

    CONSTRUCTOR PUBLIC UbuntuWindow ():
        widgetType = "Ubuntu Window".
    END CONSTRUCTOR.

END CLASS.