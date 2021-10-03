/*------------------------------------------------------------------------
  File        : FactoryButton
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.AbstractFactory.Factory.FactoryButton ABSTRACT: 

    DEFINE PUBLIC PROPERTY widgetType AS CHARACTER NO-UNDO 
        GET.
        SET. 

END CLASS.