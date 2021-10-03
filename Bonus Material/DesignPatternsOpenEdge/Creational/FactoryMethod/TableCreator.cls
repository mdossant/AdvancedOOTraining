/*------------------------------------------------------------------------
 File        : TableCreator
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

CLASS Creational.FactoryMethod.TableCreator INHERITS FurnitureCreator: 

    METHOD OVERRIDE PUBLIC Creational.FactoryMethod.Furniture CreateFurniture ():
        DEFINE VARIABLE aTable AS Table NO-UNDO.
        ASSIGN
            aTable               = NEW Table()
            aTable:FurnitureType = "Table"
            aTable:FurnitureName = "Classic 9ft dining table"
            aTable:AvailableQty  = 12
            aTable:UnitPrice     = 420.25.
        RETURN aTable.
    END METHOD.

END CLASS.