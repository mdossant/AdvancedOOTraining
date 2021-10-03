/*------------------------------------------------------------------------
    File        : testTaxVisitor
    Purpose     :
    Syntax      :
    Description :
    Author(s)   :
    Created     :
    Notes       :
  ----------------------------------------------------------------------*/

USING Behavioural.Visitor.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE taxCalc AS TaxVisitor NO-UNDO.
DEFINE VARIABLE prod1   AS Product    NO-UNDO.
DEFINE VARIABLE prod2   AS Product    NO-UNDO.
DEFINE VARIABLE prod3   AS Product    NO-UNDO.
DEFINE VARIABLE total1  AS DECIMAL    NO-UNDO.
DEFINE VARIABLE total2  AS DECIMAL    NO-UNDO.
DEFINE VARIABLE total3  AS DECIMAL    NO-UNDO.

ASSIGN
    taxCalc = NEW NHTaxVisitor()
    prod1   = NEW Grocery("Milk",3,5)
    prod2   = NEW Appliance("Fridge",1,1500)
    prod3   = NEW Computer("iMac",1,1200)
    total1  = prod1:accept(taxCalc)
    total2  = prod2:accept(taxCalc)
    total3  = prod3:accept(taxCalc)
    .

MESSAGE
    prod1:productName STRING(total1,"$>>>,>>9.99") SKIP
    prod2:productName STRING(total2,"$>>>,>>9.99") SKIP
    prod3:productName STRING(total3,"$>>>,>>9.99")
    VIEW-AS ALERT-BOX.