/*------------------------------------------------------------------------
  File        : HybridCarFactory
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

CLASS Exercise_05.HybridCarFactory IMPLEMENTS AbstractCarFactory: 

    METHOD PUBLIC Car createCar(  ):
        
        DEFINE VARIABLE objCar AS Car NO-UNDO.
        
        objCar = NEW HybridCar().
        RETURN objCar.

    END METHOD.

END CLASS.