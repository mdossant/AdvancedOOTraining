/*------------------------------------------------------------------------
  File        : PizzaBuilder
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Creational.Builder.Pizza.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.Builder.PizzaBuilder ABSTRACT:

    DEFINE PUBLIC PROPERTY pizzaName AS CHARACTER NO-UNDO
        GET.
        PROTECTED SET.
    
    DEFINE PUBLIC PROPERTY pizzaSize AS INTEGER NO-UNDO 
        GET.
        PROTECTED SET. 

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

    METHOD PUBLIC VOID addMozzarella ():
        mozzarella = TRUE.
    END METHOD.

    METHOD PUBLIC VOID addPepperoni ():
        pepperoni = TRUE.
    END METHOD.

    METHOD PUBLIC VOID addBacon ():
        bacon = TRUE.
    END METHOD. 
    
    METHOD PUBLIC VOID addTomatoSauce ():
        tomatoSauce = TRUE.
    END METHOD. 
    
    METHOD PUBLIC VOID addEgg ():
        egg = TRUE.
    END METHOD.
        
    METHOD PUBLIC Pizza build ():
        RETURN NEW Pizza(THIS-OBJECT).
    END METHOD.
           
END CLASS.