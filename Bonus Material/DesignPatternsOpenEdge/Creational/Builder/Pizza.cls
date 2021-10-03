/*------------------------------------------------------------------------
  File        : Pizza
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

CLASS Creational.Builder.Pizza: 
    
    DEFINE PUBLIC PROPERTY pizzaName AS CHARACTER NO-UNDO
        GET.
        PRIVATE SET.
        
    DEFINE PUBLIC PROPERTY pizzaSize AS INTEGER NO-UNDO 
        GET.
        PRIVATE SET. 

    DEFINE PUBLIC PROPERTY mozzarella AS LOGICAL NO-UNDO
        GET.
        PRIVATE SET.

    DEFINE PUBLIC PROPERTY pepperoni AS LOGICAL NO-UNDO 
        GET.
        PRIVATE SET. 

    DEFINE PUBLIC PROPERTY bacon AS LOGICAL NO-UNDO 
        GET.
        PRIVATE SET. 

    DEFINE PUBLIC PROPERTY tomatoSauce AS LOGICAL NO-UNDO
        GET.
        PRIVATE SET.

    DEFINE PUBLIC PROPERTY egg AS LOGICAL NO-UNDO 
        GET.
        PRIVATE SET. 

    CONSTRUCTOR PUBLIC Pizza (builder AS PizzaBuilder):
        ASSIGN
            pizzaName   = builder:pizzaName
            pizzaSize   = builder:pizzaSize
            mozzarella  = builder:mozzarella
            pepperoni   = builder:pepperoni
            bacon       = builder:bacon
            tomatoSauce = builder:tomatoSauce
            egg         = builder:egg.
    END METHOD.
    
END CLASS.