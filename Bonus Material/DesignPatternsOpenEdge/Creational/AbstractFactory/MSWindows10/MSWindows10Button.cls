/*------------------------------------------------------------------------
  File        : MSWindows10Button
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

CLASS Creational.AbstractFactory.MSWindows10.MSWindows10Button INHERITS FactoryButton: 

    CONSTRUCTOR PUBLIC MSWindows10Button ():
        widgetType = "MSWindows10 Button".
    END CONSTRUCTOR.

END CLASS.