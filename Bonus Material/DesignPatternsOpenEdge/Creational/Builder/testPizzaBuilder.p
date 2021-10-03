/*------------------------------------------------------------------------
   File        : testPizzaBuilder
   Purpose     : 
   Syntax      :
   Description : 
   Author(s)   : 
   Created     :
   Pattern Type: Creational
   Pattern Name: Builder
   Purpose     : Separate creation of a complex object from its representation
    so that the same construction process can create different representations
   Example     : Solve telescoping anti-pattern
 ----------------------------------------------------------------------*/

USING Creational.Builder.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE builder       AS PizzaBuilder NO-UNDO.
DEFINE VARIABLE pizza         AS Pizza        NO-UNDO.
DEFINE VARIABLE pizzaContents AS CHARACTER    NO-UNDO.

/* build pizza napolitana */
ASSIGN
    builder = NEW PizzaNapolitanaBuilder(12)
    pizza   = builder:build().
    
/* test output */
IF pizza:mozzarella THEN pizzaContents = "mozzarella ". 
IF pizza:pepperoni THEN pizzaContents = pizzaContents + "pepperoni ".
IF pizza:bacon THEN pizzaContents = pizzaContents + "bacon ".
IF pizza:tomatoSauce THEN pizzaContents = pizzaContents + "tomato_sauce ".
IF pizza:egg THEN pizzaContents = pizzaContents + "crumbled_boiled_egg ".
MESSAGE
    "Your first pizza:" pizza:pizzaName "is" pizza:pizzaSize
    "inches long and contains" pizzaContents    
    VIEW-AS ALERT-BOX.

/* build a pizza portuguesa */
ASSIGN
    builder = NEW PizzaPortuguesaBuilder(8)
    pizza   = builder:build().

/* test output */
IF pizza:mozzarella THEN pizzaContents = "mozzarella ".
IF pizza:pepperoni THEN pizzaContents = pizzaContents + "pepperoni ".
IF pizza:bacon THEN pizzaContents = pizzaContents + "bacon ".
IF pizza:tomatoSauce THEN pizzaContents = pizzaContents + "tomato_sauce ".
IF pizza:egg THEN pizzaContents = pizzaContents + "crumbled_boiled_eggs ".
MESSAGE
    "Your second pizza:" pizza:pizzaName "is" pizza:pizzaSize
    "inches long and contains" pizzaContents    
    VIEW-AS ALERT-BOX.
