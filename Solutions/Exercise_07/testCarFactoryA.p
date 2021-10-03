/*------------------------------------------------------------------------
    File        : testCarFactoryA
    Purpose     :
    Syntax      :
    Description :
    Author(s)   :
    Created     :
    Notes       :
  ----------------------------------------------------------------------*/

USING Exercise_07.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objVorsprung AS Car NO-UNDO.
DEFINE VARIABLE objFreude    AS Car NO-UNDO. 

objVorsprung = CarFactoryA:createObject("Vorsprung durch technik").
objFreude = CarFactoryA:createObject("Freude am fahren").

MESSAGE
    "Vorsprung with ==> " objVorsprung:Brand SKIP 
    "Freude mit " objFreude:Brand
    VIEW-AS ALERT-BOX.