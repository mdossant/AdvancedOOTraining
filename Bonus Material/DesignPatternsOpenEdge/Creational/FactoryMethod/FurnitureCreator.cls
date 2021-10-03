/*------------------------------------------------------------------------
  File        : FurnitureCreator
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Creational.FactoryMethod.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.FactoryMethod.FurnitureCreator ABSTRACT:

    METHOD PUBLIC ABSTRACT Furniture CreateFurniture ().

END CLASS.