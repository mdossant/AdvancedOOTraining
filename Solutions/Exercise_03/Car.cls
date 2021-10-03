/*------------------------------------------------------------------------
  File        : Car
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_03.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_03.Car: 

    DEFINE PUBLIC PROPERTY Brand AS CHARACTER INITIAL "Audi" NO-UNDO 
        GET.
        PRIVATE SET. 

    DEFINE PUBLIC PROPERTY Model AS CHARACTER INITIAL "A5 Sportback" NO-UNDO 
        GET.
        PRIVATE SET.     

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC INTEGER calculateFuelConsumption(  ):
        
        DEFINE VARIABLE result AS INTEGER NO-UNDO.

        RETURN 14.

    END METHOD.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC INTEGER calculateRemainingMileage(  ):
        
        DEFINE VARIABLE result AS INTEGER NO-UNDO.

        RETURN 350.

    END METHOD.    
    

END CLASS.