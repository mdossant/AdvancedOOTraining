/*------------------------------------------------------------------------
  File        : OnBoardComputerGasoline
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

CLASS Exercise_04.OnBoardComputerGasoline INHERITS OnBoardComputer: 

    METHOD OVERRIDE PUBLIC INTEGER calculateRemainingMileage(  ):
        
        RETURN 350.

    END METHOD.

END CLASS.