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
USING Exercise_16.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_16.Car: 

    DEFINE PUBLIC PROPERTY Brand AS CHARACTER NO-UNDO 
        GET.
        SET.

    DEFINE PUBLIC PROPERTY Model AS CHARACTER NO-UNDO 
        GET. 
        SET.

    DEFINE PUBLIC EVENT getPosition 
        SIGNATURE VOID ().
    
    CONSTRUCTOR PUBLIC Car (objFleetOwner AS FleetOwner):
        objFleetOwner:getPosition:Subscribe(myPosition).
    END CONSTRUCTOR.

    METHOD PUBLIC VOID myPosition():
        MESSAGE "The position of" Brand Model "is 51.6643563 degrees latitude, 4.5328828 degrees longitude" 
            VIEW-AS ALERT-BOX. 
    END METHOD.

END CLASS.