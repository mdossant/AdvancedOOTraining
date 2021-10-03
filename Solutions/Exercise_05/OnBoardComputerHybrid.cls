/*------------------------------------------------------------------------
  File        : OnBoardComputerHybrid
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

CLASS Exercise_05.OnBoardComputerHybrid INHERITS OnBoardComputer: 

    METHOD OVERRIDE PUBLIC INTEGER calculateRemainingMileage(  ):
        
        RETURN 350 + 45. /* gasoline + electricity */

    END METHOD.

END CLASS.