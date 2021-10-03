/*------------------------------------------------------------------------
    File        : Product
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   :
    Created     :
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Behavioural.Visitor.*.

INTERFACE Behavioural.Visitor.Product:  
  
    DEFINE PUBLIC PROPERTY productName AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY quantity AS INTEGER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY unitPrice AS DECIMAL NO-UNDO 
        GET.
        SET. 

    METHOD PUBLIC DECIMAL accept (aVisitor AS TaxVisitor).

END INTERFACE.