/*------------------------------------------------------------------------
  File        : Furniture
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.FactoryMethod.Furniture ABSTRACT: 

    DEFINE PUBLIC PROPERTY AvailableQty AS INTEGER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY FurnitureName AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY FurnitureType AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY SerialNumber AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY UnitPrice AS DECIMAL NO-UNDO 
        GET.
        SET. 

    METHOD PUBLIC VOID AddToCart (qty AS INTEGER):
        MESSAGE FurnitureType FurnitureName SerialNumber "added to cart w/ unit price" STRING(UnitPrice,"$>>>,>>9.99") "total" STRING(qty * unitPrice,"$>>>,>>9.99") VIEW-AS ALERT-BOX.
    END METHOD.

END CLASS.