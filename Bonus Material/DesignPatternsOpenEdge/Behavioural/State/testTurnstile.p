/*------------------------------------------------------------------------
    File        : testTurnstile
    Purpose     :
    Syntax      :
    Description :
    Author(s)   :
    Created     : Mon Jun 01 19:15:48 EDT 2020
    Notes       :
  ----------------------------------------------------------------------*/

USING Behavioural.State.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE turnstile_001 AS Turnstile NO-UNDO.

turnstile_001 = NEW Turnstile("FORD_001", "Ford Building", "One Ford Drive Detroit MI 12345").
turnstile_001:stateMachine:Coin().
turnstile_001:stateMachine:Coin().
turnstile_001:stateMachine:Push().
turnstile_001:stateMachine:Push().
turnstile_001:stateMachine:Coin().
/*turnstile_001:stateMachine:Push().*/

MESSAGE
    "Turnstile" turnstile_001:id SKIP
    "Location" turnstile_001:location SKIP
    "Address" turnstile_001:address SKIP
    "Number of coins" turnstile_001:numberOfCoins SKIP
    "Number of pushes" turnstile_001:numberOfPushes SKIP
    "Current State" turnstile_001:stateMachine:currentState
    VIEW-AS ALERT-BOX.