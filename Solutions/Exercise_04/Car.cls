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
USING Exercise_04.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_04.Car: 

    DEFINE PUBLIC PROPERTY Brand AS CHARACTER INITIAL "Audi" NO-UNDO 
        GET.
        PRIVATE SET. 

    DEFINE PUBLIC PROPERTY Model AS CHARACTER INITIAL "A5 Sportback" NO-UNDO 
        GET.
        PRIVATE SET.     

    DEFINE PRIVATE PROPERTY OnBoardComputer AS OnBoardComputer NO-UNDO 
        GET.
        SET. 

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
        
    CONSTRUCTOR PUBLIC Car (objOnBoardComputer AS OnBoardComputer):
        
        OnBoardComputer = objOnBoardComputer.
        
    END CONSTRUCTOR.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC INTEGER howMuchDidIBurn(  ):
        
        RETURN OnBoardComputer:calculateFuelConsumption().

    END METHOD.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC INTEGER howFarCanIGet(  ):
        
        RETURN OnBoardComputer:calculateRemainingMileage().

    END METHOD.    
    
END CLASS.