/*------------------------------------------------------------------------
  File        : GasolineCar
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

CLASS Exercise_05.GasolineCar INHERITS Car: 
        
    CONSTRUCTOR PUBLIC GasolineCar (  ):
        ASSIGN 
            OnBoardComputer = NEW OnBoardComputerGasoline()
            Brand           = "Audi"
            Model           = "A5 Sportback".
    END CONSTRUCTOR.

END CLASS.