/*------------------------------------------------------------------------
    File        : testAudiA5Builder
    Purpose     :
    Syntax      :
    Description :
    Author(s)   : 
    Created     :
    Notes       :
  ----------------------------------------------------------------------*/

USING Exercise_06.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objAudiA5Builder AS AudiA5Builder NO-UNDO.
DEFINE VARIABLE objCar           AS Car           NO-UNDO.

objAudiA5Builder = NEW AudiA5Builder(Color:Black).
objCar = objAudiA5Builder:build().
MESSAGE objCar:Brand objCar:Model objCar:Color objCar:Wheel:Price objCar:Wheel:Size VIEW-AS ALERT-BOX.

    
