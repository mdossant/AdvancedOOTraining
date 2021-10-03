/*------------------------------------------------------------------------
  File        : TurnstileStateUnlocked
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

CLASS Behavioural.State.TurnstileStateUnlocked INHERITS TurnstileState:

    METHOD OVERRIDE PUBLIC VOID Coin (stateMachine AS TurnstileStateMachine):
        message "no need for more coins" view-as alert-box.
    END METHOD.

    METHOD OVERRIDE PUBLIC VOID Push (stateMachine AS TurnstileStateMachine):
        stateMachine:turnstile:numberOfPushes = stateMachine:turnstile:numberOfPushes + 1.
        stateMachine:currentState = NEW TurnstileStateLocked().
    END METHOD.

    METHOD OVERRIDE PUBLIC VOID Start (stateMachine AS TurnstileStateMachine):
    END METHOD.

END CLASS.