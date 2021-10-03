/*------------------------------------------------------------------------
    File        : testFleetOwner
    Purpose     :
    Syntax      :
    Description : 
    Author(s)   : 
    Created     :
    Notes       :
  ----------------------------------------------------------------------*/

USING Exercise_16.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objAudi       AS Car        NO-UNDO.
DEFINE VARIABLE objBMW        AS Car        NO-UNDO.
DEFINE VARIABLE objFleetOwner AS FleetOwner NO-UNDO.

objFleetOwner = NEW FleetOwner().

objAudi = NEW Car(objFleetOwner).
ASSIGN 
    objAudi:Brand = 'Audi'
    objAudi:Model = "A5 Sportback".
    
objBMW = NEW Car(objFleetOwner).
ASSIGN 
    objBMW:Brand = 'BMW'
    objBMW:Model = "4 Gran Coupe".

objFleetOwner:showPositions().