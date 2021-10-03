/*------------------------------------------------------------------------
  File        : Customer
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

CLASS Exercise_12.Customer: 

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC CHARACTER createCustomer(INPUT ipcName    AS CHARACTER,
        INPUT ipcAddress AS CHARACTER  ):
        
        DEFINE VARIABLE result AS CHARACTER NO-UNDO.
        
        /* create a customer record with unique identifier */
        // find customer
        // if not found then create
        RETURN GUID(GENERATE-UUID).

    END METHOD.

END CLASS.