/*------------------------------------------------------------------------
  File        : CarBuilder
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_06.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_06.CarBuilder ABSTRACT: 
    
    DEFINE PUBLIC PROPERTY Color AS Color NO-UNDO 
        GET.
        PROTECTED SET. 

    DEFINE PUBLIC PROPERTY Wheel AS Wheel NO-UNDO 
        GET.
        PROTECTED SET. 
    
    DEFINE PUBLIC PROPERTY Brand AS CHARACTER NO-UNDO
        GET.
        PRIVATE SET.
    
    DEFINE PUBLIC PROPERTY Model AS CHARACTER NO-UNDO
        GET.
        PRIVATE SET.
    
    CONSTRUCTOR PUBLIC CarBuilder (ipcBrand AS CHARACTER, ipcModel AS CHARACTER):
        ASSIGN 
            Brand = ipcBrand
            Model = ipcModel.
    END CONSTRUCTOR.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC Car build(  ):
        
        RETURN NEW Car(THIS-OBJECT).

    END METHOD.

END CLASS.