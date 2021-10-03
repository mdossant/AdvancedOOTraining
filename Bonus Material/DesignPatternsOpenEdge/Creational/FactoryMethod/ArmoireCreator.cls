/*------------------------------------------------------------------------
  File        : ArmoireCreator
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

CLASS Creational.FactoryMethod.ArmoireCreator INHERITS FurnitureCreator: 

    METHOD OVERRIDE PUBLIC Creational.FactoryMethod.Furniture CreateFurniture ():
        DEFINE VARIABLE aArmoire AS Armoire NO-UNDO.
        ASSIGN
            aArmoire               = NEW Armoire()
            aArmoire:FurnitureType = "Armoire"
            aArmoire:FurnitureName = "Spanish Oak Cocina Vieja Collection"
            aArmoire:AvailableQty  = 5
            aArmoire:SerialNumber  = "CV1234567"
            aArmoire:UnitPrice     = 850.75.
        RETURN aArmoire.
    END METHOD.

END CLASS.