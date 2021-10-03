/*------------------------------------------------------------------------
  File        : MySingletonClass
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_08.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_08.MySingletonClass: 
    
    DEFINE PUBLIC PROPERTY MyProperty AS INTEGER NO-UNDO 
        GET.
        SET. 

    DEFINE PRIVATE STATIC PROPERTY MySingletonClass AS MySingletonClass NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR PRIVATE MySingletonClass (  ):
    END CONSTRUCTOR.

    METHOD PUBLIC STATIC MySingletonClass getInstance(  ):
        
        /* create a new instance if needed */
        IF NOT VALID-OBJECT(MySingletonClass) THEN
            MySingletonClass = NEW MySingletonClass().
        RETURN MySingletonClass.

    END METHOD.    

END CLASS.