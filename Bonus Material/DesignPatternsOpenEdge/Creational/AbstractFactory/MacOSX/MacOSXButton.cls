/*------------------------------------------------------------------------
  File        : MacOSXButton
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Creational.AbstractFactory.Factory.FactoryButton.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.AbstractFactory.MacOSX.MacOSXButton INHERITS FactoryButton: 
        
    CONSTRUCTOR PUBLIC MacOSXButton (  ):
        widgetType = "MacOSX Button".
    END CONSTRUCTOR.

END CLASS.