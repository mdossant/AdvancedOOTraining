/*------------------------------------------------------------------------
  File        : PizzaNapolitanaBuilder
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

CLASS Creational.Builder.PizzaNapolitanaBuilder INHERITS PizzaBuilder: 

    CONSTRUCTOR PUBLIC PizzaNapolitanaBuilder (ipSize AS INTEGER):
        ASSIGN
            pizzaName = "Napolitana"
            pizzaSize = ipSize.
        addMozzarella().
        addTomatoSauce().
    END CONSTRUCTOR.
    
END CLASS.