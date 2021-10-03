/*------------------------------------------------------------------------
    File        : testCarIterator
    Purpose     :
    Syntax      :
    Description :
    Author(s)   : 
    Created     :
    Notes       :
  ----------------------------------------------------------------------*/

USING Exercise_15.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objCarCollection AS CarCollection NO-UNDO.
DEFINE VARIABLE objCar           AS Car           NO-UNDO. 
DEFINE VARIABLE objMemento       AS Memento       NO-UNDO.

objCarCollection = NEW CarCollection().
objCar = objCarCollection:Iterator:getFirst().

MESSAGE objCar:Brand objCar:Model objCar:getListPrice() VIEW-AS ALERT-BOX.
    
objMemento = objCar:save().
objCar:Model = "A7".

MESSAGE objCar:Brand objCar:Model objCar:getListPrice() VIEW-AS ALERT-BOX.

objCar = objCar:restore(objMemento).

MESSAGE objCar:Brand objCar:Model objCar:getListPrice() VIEW-AS ALERT-BOX.
