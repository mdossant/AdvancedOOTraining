/*------------------------------------------------------------------------
    File        : StartCar
    Purpose     :
    Syntax      :
    Description :
    Author(s)   : 
    Created     :
    Notes       :
  ----------------------------------------------------------------------*/

USING Exercise_13.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE INPUT PARAMETER ipiLiters AS INTEGER.

DEFINE VARIABLE objCar AS Car NO-UNDO.
objCar = NEW Car().
objCar:addFuel(ipiLiters).