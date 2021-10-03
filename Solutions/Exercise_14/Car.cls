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
USING Exercise_14.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_14.Car: 

    DEFINE PUBLIC PROPERTY Brand AS CHARACTER NO-UNDO 
        GET.
        PUBLIC SET. 

    DEFINE PUBLIC PROPERTY Model AS CHARACTER NO-UNDO 
        GET.
        PUBLIC SET.     

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC CHARACTER showWhatever(  ):
        
        DEFINE VARIABLE result AS CHARACTER NO-UNDO initial "whatever".

        RETURN result.

    END METHOD.

END CLASS.