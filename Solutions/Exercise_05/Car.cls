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
USING Exercise_05.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_05.Car ABSTRACT: 

    DEFINE PUBLIC PROPERTY Brand AS CHARACTER NO-UNDO 
        GET.
        PROTECTED SET.

    DEFINE PUBLIC PROPERTY Model AS CHARACTER NO-UNDO 
        GET.
        PROTECTED SET.
    
    DEFINE PROTECTED PROPERTY OnBoardComputer AS OnBoardComputer
        GET.
        PROTECTED SET.
    
    METHOD PUBLIC INTEGER howFarCanIGet(  ):
        
        RETURN OnBoardComputer:calculateRemainingMileage().

    END METHOD.

    METHOD PUBLIC INTEGER howMuchDidIBurn(  ):
        
        RETURN OnBoardComputer:calculateFuelConsumption().

    END METHOD.
    
END CLASS.