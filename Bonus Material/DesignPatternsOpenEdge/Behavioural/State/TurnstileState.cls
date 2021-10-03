/*------------------------------------------------------------------------
  File        : TurnstileState
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

CLASS Behavioural.State.TurnstileState ABSTRACT: 

    METHOD PUBLIC ABSTRACT VOID Coin (stateMachine AS TurnstileStateMachine).

    METHOD PUBLIC ABSTRACT VOID Push (stateMachine AS TurnstileStateMachine).
    
    METHOD PUBLIC ABSTRACT VOID START (stateMachine AS TurnstileStateMachine).

END CLASS.