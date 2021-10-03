/*------------------------------------------------------------------------
  File        : GasolineCarFactory
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

CLASS Exercise_05.GasolineCarFactory IMPLEMENTS AbstractCarFactory: 

    METHOD PUBLIC Car createCar(  ):
        
        DEFINE VARIABLE objCar AS Car NO-UNDO.
        
        objCar = NEW GasolineCar().
        RETURN objCar.

    END METHOD.

END CLASS.