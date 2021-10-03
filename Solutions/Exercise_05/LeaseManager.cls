/*------------------------------------------------------------------------
  File        : LeaseManager
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

CLASS Exercise_05.LeaseManager: 
    
    METHOD PUBLIC VOID reportRemainingMileage(carFactory AS AbstractCarFactory):
        
        DEFINE VARIABLE objCar AS Car NO-UNDO.
        
        objCar = carFactory:createCar().
        MESSAGE "The car in your fleet can do " objCar:howFarCanIGet() " kilometers"
            VIEW-AS ALERT-BOX.

    END METHOD.

END CLASS.