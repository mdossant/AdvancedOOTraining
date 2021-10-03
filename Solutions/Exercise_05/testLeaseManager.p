/*------------------------------------------------------------------------
    File        : testLeaseManager
    Purpose     :
    Syntax      :
    Description :
    Author(s)   :
    Created     :
    Notes       :
  ----------------------------------------------------------------------*/

USING Exercise_05.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objLeaseManager AS LeaseManager       NO-UNDO.
DEFINE VARIABLE objCarFactory   AS AbstractCarFactory NO-UNDO.
DEFINE VARIABLE leaseHybridCar  AS LOGICAL            NO-UNDO.

MESSAGE "Lease hybrid car?" VIEW-AS ALERT-BOX QUESTION BUTTON YES-NO UPDATE leaseHybridCar.

CASE leaseHybridCar:
    WHEN TRUE THEN
        objCarFactory = NEW HybridCarFactory().
    WHEN FALSE THEN
        objCarFactory = NEW GasolineCarFactory().
END CASE.

objLeaseManager = NEW LeaseManager().

objLeaseManager:reportRemainingMileage(objCarFactory).