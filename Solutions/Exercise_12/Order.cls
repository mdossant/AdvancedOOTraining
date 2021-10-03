/*------------------------------------------------------------------------
  File        : Order
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_12.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_12.Order: 

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC INTEGER createOrder(INPUT ipcCustomerID AS CHARACTER, ipiArticleNumber AS INTEGER, ipiNumberOfArticles AS INTEGER):
        
        /* create an order and return the order number */
        RETURN RANDOM(1,1000000).

    END METHOD.

END CLASS.