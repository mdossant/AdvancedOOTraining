/*------------------------------------------------------------------------
   File        : WidgetFactory
   Purpose     : 
   Syntax      : 
   Description : 
   Author(s)   :
   Created     :
   Notes       : 
 ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Creational.AbstractFactory.Factory.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.AbstractFactory.Factory.WidgetFactory ABSTRACT: 

    METHOD PUBLIC ABSTRACT FactoryScrollBar CreateScrollBar ().

    METHOD PUBLIC ABSTRACT FactoryWindow CreateWindow ().
    
    METHOD PUBLIC ABSTRACT FactoryButton CreateButton ().

END CLASS.