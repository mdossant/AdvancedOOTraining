/*------------------------------------------------------------------------
    File        : testOrderFacade
    Purpose     :
    Syntax      :
    Description :
    Author(s)   : 
    Created     :
    Notes       :
  ----------------------------------------------------------------------*/

USING Exercise_12.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objOrderFacade    AS OrderFacade NO-UNDO. 
DEFINE VARIABLE cCustomerName     AS CHARACTER   NO-UNDO.
DEFINE VARIABLE cCustomerAddress  AS CHARACTER   NO-UNDO.
DEFINE VARIABLE iArticleNumber    AS INTEGER     NO-UNDO.
DEFINE VARIABLE iNumberOfArticles AS INTEGER     NO-UNDO. 

objOrderFacade = NEW OrderFacade().

UPDATE cCustomerName cCustomerAddress iArticleNumber iNumberOfArticles WITH 1 COLUMN.

MESSAGE
    "Order "
    objOrderFacade:submitForm(cCustomerName, cCustomerAddress, iArticleNumber, iNumberOfArticles)
    " has been created"
    VIEW-AS ALERT-BOX.

