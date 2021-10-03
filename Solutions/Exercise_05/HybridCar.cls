/*------------------------------------------------------------------------
  File        : HybridCar
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

CLASS Exercise_05.HybridCar INHERITS Car: 
        
    CONSTRUCTOR PUBLIC HybridCar (  ):
        ASSIGN 
            OnBoardComputer = NEW OnBoardComputerHybrid()
            Brand           = "Toyota"
            Model           = "Prius".
    END CONSTRUCTOR.

END CLASS.