/*------------------------------------------------------------------------
    File        : TestCar
    Purpose     : 
    Syntax      :
    Description : 
    Author(s)   : 
    Created     :
    Notes       :
  ----------------------------------------------------------------------*/

USING Exercise_04.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objOnBoardComputerHybrid AS OnBoardComputerHybrid.
DEFINE VARIABLE objCar                   AS Car.

objOnBoardComputerHybrid = NEW OnBoardComputerHybrid().
objCar = NEW Car(objOnBoardComputerHybrid).

MESSAGE "So far you've burned " objCar:howMuchDidIBurn() " liters with your " objCar:Brand " " objCar:Model 
    ", you should find a gas station in " objCar:howFarCanIGet() " kilometers"
    VIEW-AS ALERT-BOX.
    