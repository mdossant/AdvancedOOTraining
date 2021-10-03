/*------------------------------------------------------------------------
    File        : testCarFactoryB
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
DEFINE VARIABLE objGoFurther AS Car NO-UNDO.

ASSIGN
    objVorsprung = CAST(CarFactoryB:createObject("Vorsprung durch technik"),Car)
    objFreude    = CAST(CarFactoryB:createObject("Freude am fahren"),Car)
    objGoFurther = CAST(CarFactoryB:createObject("Go Further"),Car).

MESSAGE 
    "Vorsprung mit" objVorsprung:Brand SKIP
    "Freude mit" objFreude:Brand SKIP
    "Go Further with" objGoFurther:Brand
    VIEW-AS ALERT-BOX.
    
FINALLY:
    DELETE OBJECT objVorsprung.
    DELETE OBJECT objFreude.
    DELETE OBJECT objGoFurther.
END FINALLY.