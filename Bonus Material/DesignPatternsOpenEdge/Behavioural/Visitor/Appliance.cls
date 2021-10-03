/*------------------------------------------------------------------------
  File        : Appliance
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Behavioural.Visitor.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Behavioural.Visitor.Appliance IMPLEMENTS Product: 

    DEFINE PUBLIC PROPERTY productName AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY quantity AS INTEGER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY unitPrice AS DECIMAL NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR PUBLIC Appliance (pName AS CHARACTER, pQty AS INTEGER, pPrice AS DECIMAL):
        ASSIGN
            productName = pName
            quantity    = pQty
            unitPrice   = pPrice.
    END CONSTRUCTOR.

    METHOD PUBLIC DECIMAL accept (aVisitor AS TaxVisitor):
        RETURN aVisitor:visit(THIS-OBJECT).
    END METHOD.

END CLASS.