/*------------------------------------------------------------------------
  File        : Car
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

CLASS Exercise_15.Car SERIALIZABLE: 

    DEFINE VARIABLE objMemento AS Memento NO-UNDO.
    
    DEFINE PUBLIC PROPERTY Brand AS CHARACTER NO-UNDO 
        GET.
        PUBLIC SET. 

    DEFINE PUBLIC PROPERTY Model AS CHARACTER NO-UNDO 
        GET.
        PUBLIC SET.     

    DEFINE PUBLIC PROPERTY ListPrice AS DECIMAL NO-UNDO
        GET.
        SET.
        
    CONSTRUCTOR PUBLIC Car (pListPrice AS DECIMAL):
        ListPrice = pListPrice.
    END CONSTRUCTOR.
    
    METHOD PUBLIC Memento save():
        DEFINE VARIABLE objSerializer   AS Progress.IO.JsonSerializer NO-UNDO. 
        DEFINE VARIABLE objStringStream AS StringOutputStream         NO-UNDO. 
        
        ASSIGN 
            objSerializer   = NEW Progress.IO.JsonSerializer(FALSE)
            objStringStream = NEW StringOutputStream().
        objSerializer:Serialize(THIS-OBJECT, objStringStream).
        objStringStream:Close().
        
        objMemento = NEW Memento().
        objMemento:setState(objStringStream:lcVar).
        RETURN objMemento.
    END METHOD. 
    
    METHOD PUBLIC Car restore(objMemento AS Memento):
        DEFINE VARIABLE objSerializer   AS Progress.IO.JsonSerializer NO-UNDO. 
        DEFINE VARIABLE objStringStream AS StringInputStream          NO-UNDO. 
        DEFINE VARIABLE objCar          AS Car                        NO-UNDO.
        
        ASSIGN 
            objSerializer   = NEW Progress.IO.JsonSerializer(FALSE)
            objStringStream = NEW StringInputStream(objMemento:getState()).
        objCar = CAST(objSerializer:Deserialize(objStringStream),Car).
        objStringStream:Close().
        RETURN objCar.
    END METHOD.
    
    METHOD PUBLIC DECIMAL getListPrice ():
        RETURN ListPrice.
    END METHOD.

END CLASS.