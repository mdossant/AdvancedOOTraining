/*------------------------------------------------------------------------
    File        : testOrderStateMachine
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : 
    Created     : Mon Jan 08 12:14:02 CET 2018
    Notes       :
  ----------------------------------------------------------------------*/

USING Exercise_17.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objOrder AS Order NO-UNDO.

objOrder = NEW Order().
ASSIGN 
    objOrder:totalOrderAmount = 10000.

/* nothing paid */
objOrder:OrderStateMachine:noPaymentReceived().

/* pay some money, but not enough */
objOrder:OrderStateMachine:receiveDownpayment(1500).

/* pay some money, just enough */
objOrder:OrderStateMachine:receiveDownpayment(500).

/* complete production */
objOrder:OrderStateMachine:signalCarCompleted().

/* pay remainder */
objOrder:OrderStateMachine:receiveSecondPayment(8000).

/* get the keys */
objOrder:OrderStateMachine:carDelivered().

objOrder:orderStateMachine:changeStateToProdStarted().