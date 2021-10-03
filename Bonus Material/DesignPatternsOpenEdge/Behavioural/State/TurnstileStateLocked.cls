/*------------------------------------------------------------------------
  File        : TurnstileStateLocked
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

CLASS Behavioural.State.TurnstileStateLocked INHERITS TurnstileState:

    METHOD OVERRIDE PUBLIC VOID Coin (stateMachine AS TurnstileStateMachine):
        stateMachine:turnstile:numberOfCoins = stateMachine:turnstile:numberOfCoins + 1.
        stateMachine:currentState = NEW TurnstileStateUnlocked().
    END METHOD.

    METHOD OVERRIDE PUBLIC VOID Push (stateMachine AS TurnstileStateMachine):
        MESSAGE "Cannot push without first inserting coin" VIEW-AS ALERT-BOX.
    END METHOD.
    
    METHOD OVERRIDE PUBLIC VOID Start (stateMachine AS TurnstileStateMachine):
    END METHOD.
END CLASS.