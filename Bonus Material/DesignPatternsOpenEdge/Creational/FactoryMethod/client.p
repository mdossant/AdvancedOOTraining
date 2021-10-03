USING Creational.FactoryMethod.*.

DEFINE VARIABLE aCreator      AS FurnitureCreator NO-UNDO.
DEFINE VARIABLE aFurniture    AS Furniture        NO-UNDO.
    
PROCEDURE addFurnitureToCart:
    DEFINE INPUT PARAMETER furnitureType AS CHARACTER NO-UNDO.
    DEFINE INPUT PARAMETER furnitureQty  AS INTEGER   NO-UNDO.
    
    aCreator = DYNAMIC-NEW "Creational.FactoryMethod." + furnitureType + "Creator"().
    aFurniture = aCreator:CreateFurniture().
    aFurniture:AddToCart(furnitureQty).
END PROCEDURE.

RUN addFurnitureToCart("Armoire", 10).
RUN addFurnitureToCart("Table", 5).
/*RUN addFurnitureToCart("Chair", 20).*/