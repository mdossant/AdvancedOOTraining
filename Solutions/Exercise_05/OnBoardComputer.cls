/*------------------------------------------------------------------------
  File        : OnBoardComputer
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

CLASS Exercise_05.OnBoardComputer ABSTRACT: 
    
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

    METHOD PUBLIC ABSTRACT INTEGER calculateRemainingMileage(  ).
    

END CLASS.