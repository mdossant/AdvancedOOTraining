/*------------------------------------------------------------------------
  File        : Car
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

CLASS Exercise_06.Car: 

    DEFINE PUBLIC PROPERTY Color AS Color NO-UNDO 
        GET.
        PRIVATE SET. 

    DEFINE PUBLIC PROPERTY Wheel AS Wheel NO-UNDO 
        GET.
        PRIVATE SET. 
    
    DEFINE PUBLIC PROPERTY Brand AS CHARACTER NO-UNDO
        GET.
        PRIVATE SET.
    
    DEFINE PUBLIC PROPERTY Model AS CHARACTER NO-UNDO
        GET.
        PRIVATE SET.
    
    /*------------------------------------------------------------------------------
 Purpose:
 Notes:
------------------------------------------------------------------------------*/
        
    CONSTRUCTOR PUBLIC Car (objCarBuilder AS CarBuilder):
        ASSIGN 
            Brand             = objCarBuilder:Brand
            Model             = objCarBuilder:Model
            Wheel             = objCarBuilder:Wheel
            THIS-OBJECT:Color = objCarBuilder:Color.
    END CONSTRUCTOR.

END CLASS.