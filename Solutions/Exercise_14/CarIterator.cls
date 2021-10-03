/*------------------------------------------------------------------------
  File        : CarIterator
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_14.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_14.CarIterator: 
    
    DEFINE PROTECTED PROPERTY iCurrent AS INTEGER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY iLast AS INTEGER NO-UNDO 
        GET.
        SET. 

    DEFINE PROTECTED PROPERTY objCarCollection AS CarCollection NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR PUBLIC CarIterator (objCarCollection AS CarCollection ):
        THIS-OBJECT:objCarCollection = objCarCollection. 
    END CONSTRUCTOR.


    METHOD PUBLIC Car getFirst(  ):
        iCurrent = 1.
        RETURN objCarCollection:getCar(1).
    END METHOD.    
    
    METHOD PUBLIC Car getNext():
        DEFINE VARIABLE objCar AS Car NO-UNDO. 
        
        ASSIGN 
            objCar   = objCarCollection:getCar(iCurrent + 1)
            iCurrent = iCurrent + 1.
        RETURN objCar.
    END METHOD. 
    
    METHOD PUBLIC Car getLast():
        iCurrent = 6.
        RETURN objCarCollection:getCar(iLast).
    END METHOD. 
    
    METHOD PUBLIC LOGICAL isLast():
        RETURN iCurrent = iLast.
    END METHOD.
    
    METHOD PUBLIC LOGICAL hasNext():
        RETURN iCurrent < iLast.
    END METHOD.

END CLASS.