/*------------------------------------------------------------------------
    File        : TaxVisitor
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   :
    Created     :
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Behavioural.Visitor.*.

INTERFACE Behavioural.Visitor.TaxVisitor:
  
    METHOD PUBLIC DECIMAL visit (aAppliance AS Appliance).

    METHOD PUBLIC DECIMAL visit (aGrocery AS Grocery).

    METHOD PUBLIC DECIMAL visit (aComputer AS Computer).

END INTERFACE.