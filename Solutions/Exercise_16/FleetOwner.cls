/*------------------------------------------------------------------------
  File        : FleetOwner
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_16.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_16.FleetOwner: 
    
    DEFINE PUBLIC EVENT getPosition 
        SIGNATURE VOID ().

    METHOD PUBLIC VOID showPositions(  ):
        /* publish the specific event */
        getPosition:Publish().
    END METHOD.

END CLASS.