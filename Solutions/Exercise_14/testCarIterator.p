/*------------------------------------------------------------------------
    File        : testCarIterator
    Purpose     :
    Syntax      :
    Description :
    Author(s)   : 
    Created     :
    Notes       :
  ----------------------------------------------------------------------*/

USING Exercise_14.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objCarCollection AS CarCollection NO-UNDO.
DEFINE VARIABLE objCar           AS Car           NO-UNDO. 

objCarCollection = NEW CarCollection().

objCar = objCarCollection:Iterator:getFirst().
MESSAGE objCar:Brand objCar:Model VIEW-AS ALERT-BOX.

objCar = objCarCollection:Iterator:getNext().
MESSAGE objCar:Brand objCar:Model objCar:showWhatever() VIEW-AS ALERT-BOX.

MESSAGE objCarCollection:Iterator:isLast() objCarCollection:Iterator:hasNext() VIEW-AS ALERT-BOX TITLE "IS LAST? HAS NEXT".

objCar = objCarCollection:Iterator:getLast().
MESSAGE objCar:Brand objCar:Model VIEW-AS ALERT-BOX.

MESSAGE objCarCollection:Iterator:isLast() objCarCollection:Iterator:hasNext() VIEW-AS ALERT-BOX TITLE "IS LAST? HAS NEXT".
