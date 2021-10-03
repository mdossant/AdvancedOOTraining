/*------------------------------------------------------------------------
  File        : NHTaxVisitor
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

CLASS Behavioural.Visitor.NHTaxVisitor IMPLEMENTS TaxVisitor: 

    METHOD PUBLIC DECIMAL visit (aAppliance AS Appliance):
        RETURN aAppliance:unitPrice * aAppliance:quantity.
    END METHOD.

    METHOD PUBLIC DECIMAL visit (aComputer AS Computer):
        RETURN aComputer:unitPrice * aComputer:quantity.
    END METHOD.

    METHOD PUBLIC DECIMAL visit (aGrocery AS Grocery):
        RETURN aGrocery:unitPrice * aGrocery:quantity.
    END METHOD.

END CLASS.