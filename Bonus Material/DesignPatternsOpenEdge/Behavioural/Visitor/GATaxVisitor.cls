/*------------------------------------------------------------------------
  File        : GATaxVisitor
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

CLASS Behavioural.Visitor.GATaxVisitor IMPLEMENTS TaxVisitor: 

    METHOD PUBLIC DECIMAL visit (aAppliance AS Appliance):
        // e.g. call an API to fetch product tax rate
        RETURN aAppliance:unitPrice * aAppliance:quantity * 1.085.
    END METHOD.

    METHOD PUBLIC DECIMAL visit (aComputer AS Computer):
        // e.g. database query to fetch tax rate
        RETURN aComputer:unitPrice * aComputer:quantity * 1.06.
    END METHOD.

    METHOD PUBLIC DECIMAL visit (aGrocery AS Grocery):
        // e.g. call internal api to calculate total price etc.
        DEFINE VARIABLE totalprice AS DECIMAL NO-UNDO.
        totalprice = aGrocery:unitPrice * aGrocery:quantity * 1.05.
        RETURN totalprice.
    END METHOD.

END CLASS.