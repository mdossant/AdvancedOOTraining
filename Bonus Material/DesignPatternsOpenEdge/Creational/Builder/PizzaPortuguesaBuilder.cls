/*------------------------------------------------------------------------
  File        : PizzaPortuguesaBuilder
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Creational.Builder.PizzaBuilder.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.Builder.PizzaPortuguesaBuilder INHERITS PizzaBuilder: 

    CONSTRUCTOR PUBLIC PizzaPortuguesaBuilder (ipSize AS INTEGER):
        ASSIGN
            pizzaName = "Portuguesa"
            pizzaSize = ipSize.
        addMozzarella().
        addPepperoni().
        addTomatoSauce().
        addEgg().
    END CONSTRUCTOR.
    
END CLASS.