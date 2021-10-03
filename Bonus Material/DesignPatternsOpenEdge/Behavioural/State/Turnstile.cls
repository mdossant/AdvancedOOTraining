/*------------------------------------------------------------------------
  File        : Turnstile
  Purpose     :
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Behavioural.State.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Behavioural.State.Turnstile: 

    DEFINE PUBLIC PROPERTY id AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY location AS CHARACTER NO-UNDO 
        GET.
        SET. 
        
    DEFINE PUBLIC PROPERTY address AS CHARACTER NO-UNDO 
        GET.
        SET. 
        
    DEFINE PUBLIC PROPERTY numberOfCoins AS INTEGER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY numberOfPushes AS INTEGER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY stateMachine AS Behavioural.State.TurnstileStateMachine NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR PUBLIC Turnstile (pId AS CHARACTER, pLocation AS CHARACTER, pAddress AS CHARACTER):
        ASSIGN
            id           = pId
            location     = pLocation
            address      = pAddress
            stateMachine = NEW TurnstileStateMachine(THIS-OBJECT).
    END CONSTRUCTOR.

END CLASS.