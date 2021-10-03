/*------------------------------------------------------------------------
  File        : MSWindows10ScrollBar
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.AbstractFactory.MSWindows10.MSWindows10ScrollBar INHERITS Creational.AbstractFactory.Factory.FactoryScrollBar: 

    CONSTRUCTOR PUBLIC MSWindows10ScrollBar ():
        widgetType = "MSWindows10ScrollBar".
    END CONSTRUCTOR.

END CLASS.