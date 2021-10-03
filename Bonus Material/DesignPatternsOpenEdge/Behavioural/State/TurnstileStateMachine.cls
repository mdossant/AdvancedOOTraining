/*------------------------------------------------------------------------
  File        : TurnstileStateMachine
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

CLASS Behavioural.State.TurnstileStateMachine:

    DEFINE PUBLIC PROPERTY turnstile AS Behavioural.State.Turnstile NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY currentState AS Behavioural.State.TurnstileState NO-UNDO 
        GET.
        SET. 

    CONSTRUCTOR PUBLIC TurnstileStateMachine (pTurnstile AS Turnstile):
        ASSIGN
            turnstile    = pTurnstile
            currentState = NEW TurnstileStateLocked().
    END CONSTRUCTOR.

    METHOD PUBLIC VOID Push ():
        currentState:Push(THIS-OBJECT).
    END METHOD.

    METHOD PUBLIC VOID Coin ():
        currentState:Coin(THIS-OBJECT).
    END METHOD.

END CLASS.