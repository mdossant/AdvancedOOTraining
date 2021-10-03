/*------------------------------------------------------------------------
  File        : UbuntuButton
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

CLASS Creational.AbstractFactory.Ubuntu.UbuntuButton INHERITS FactoryButton: 
        
    CONSTRUCTOR PUBLIC UbuntuButton (  ):
        widgetType = "Ubuntu Button".
    END CONSTRUCTOR.

END CLASS.