/*------------------------------------------------------------------------
  File        : CarCollection
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     : 
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_15.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_15.CarCollection: 
    
    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    DEFINE PUBLIC PROPERTY iNumberOfCars AS INTEGER NO-UNDO GET. 
        PRIVATE SET.

    DEFINE PUBLIC PROPERTY Iterator AS CarIterator NO-UNDO 
        GET():
            IF NOT VALID-OBJECT(Iterator) THEN
                ASSIGN Iterator       = NEW CarIterator(THIS-OBJECT)
                    Iterator:iLast = iNumberOfCars.
            RETURN Iterator.
        END GET.
        PROTECTED SET.     
    

    DEFINE PRIVATE TEMP-TABLE ttCarObject NO-UNDO
        FIELD objCar    AS Progress.Lang.Object
        FIELD iSequence AS INTEGER.
        
    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
        
    CONSTRUCTOR PUBLIC CarCollection():
        DEFINE VARIABLE iCounter AS INTEGER NO-UNDO INITIAL 0.
        
        CREATE ttCarObject.
        ASSIGN 
            ttCarObject.objCar                   = NEW Car(1000)
            CAST(ttCarObject.objCar,"Car"):Brand = "Audi"
            CAST(ttCarObject.objCar,"Car"):Model = "A1"
            ttCarObject.iSequence                = 1.
            
        CREATE ttCarObject.
        ASSIGN 
            ttCarObject.objCar                   = NEW Car(2000)
            CAST(ttCarObject.objCar,"Car"):Brand = "Audi"
            CAST(ttCarObject.objCar,"Car"):Model = "A2"
            ttCarObject.iSequence                = 2.

        CREATE ttCarObject.
        ASSIGN 
            ttCarObject.objCar                   = NEW Car(3000)
            CAST(ttCarObject.objCar,"Car"):Brand = "Audi"
            CAST(ttCarObject.objCar,"Car"):Model = "A3"
            ttCarObject.iSequence                = 3.

        CREATE ttCarObject.
        ASSIGN 
            ttCarObject.objCar                   = NEW Car(4000)
            CAST(ttCarObject.objCar,"Car"):Brand = "Audi"
            CAST(ttCarObject.objCar,"Car"):Model = "A4"
            ttCarObject.iSequence                = 4.

        CREATE ttCarObject.
        ASSIGN 
            ttCarObject.objCar                   = NEW Car(5000)
            CAST(ttCarObject.objCar,"Car"):Brand = "Audi"
            CAST(ttCarObject.objCar,"Car"):Model = "A5"
            ttCarObject.iSequence                = 5.

        CREATE ttCarObject.
        ASSIGN 
            ttCarObject.objCar                   = NEW Car(6000)
            CAST(ttCarObject.objCar,"Car"):Brand = "Audi"
            CAST(ttCarObject.objCar,"Car"):Model = "A6"
            ttCarObject.iSequence                = 6.           

        iNumberOfCars = 6.
    END CONSTRUCTOR.

    METHOD PUBLIC Car getCar(INPUT ipiSequence AS INTEGER):
        //MESSAGE SUBSTITUTE("CarCollection:getCar(&1)", ipiSequence) VIEW-AS ALERT-BOX.
        FIND ttCarObject
            WHERE ttCarObject.iSequence = ipiSequence.
        RETURN CAST(ttCarObject.objCar,'Car').
    END METHOD. 
    
END CLASS.