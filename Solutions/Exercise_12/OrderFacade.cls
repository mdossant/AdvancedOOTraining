/*------------------------------------------------------------------------
  File        : OrderFacade
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

CLASS Exercise_12.OrderFacade: 
    
    DEFINE PROTECTED PROPERTY aCustomer AS Customer NO-UNDO 
        GET.
        SET. 

    DEFINE PROTECTED PROPERTY aOrder AS Order NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR PUBLIC OrderFacade (  ):
        ASSIGN 
            aCustomer = NEW Customer()
            aOrder    = NEW Order().
    END CONSTRUCTOR.

    METHOD PUBLIC INTEGER submitForm(INPUT ipcCustomerName AS CHARACTER,
        INPUT ipcCustomerAddress AS CHARACTER,
        INPUT ipiArticleNumber AS INTEGER,
        INPUT ipiNumberOfArticles AS INTEGER):
        
        RETURN aOrder:createOrder(aCustomer:createCustomer(ipcCustomerName, ipcCustomerAddress),ipiArticleNumber, ipiNumberOfArticles).
    END METHOD.

END CLASS.