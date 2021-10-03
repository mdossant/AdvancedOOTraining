/*------------------------------------------------------------------------
  File        : FactoryWindow
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.AbstractFactory.Factory.FactoryWindow ABSTRACT: 

    DEFINE PUBLIC PROPERTY widgetType AS CHARACTER NO-UNDO 
        GET.
        SET. 

END CLASS.