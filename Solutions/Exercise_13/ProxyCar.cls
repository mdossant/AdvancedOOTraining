/*------------------------------------------------------------------------
  File        : ProxyCar
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_13.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_13.ProxyCar: 

    DEFINE PRIVATE STATIC PROPERTY hServer AS HANDLE NO-UNDO
        GET.
        SET.

    METHOD PUBLIC VOID addFuel(INPUT ipiLiters AS INTEGER):
        
        IF NOT VALID-HANDLE(hServer) THEN
        DO:
            CREATE SERVER hServer.
            hServer:CONNECT("-sessionModel Session-free -URL http://localhost:8820/oeabl/apsv").
        END.
        RUN Exercise_13/StartCar.p ON SERVER hServer ASYNCHRONOUS (ipiLiters).

    /*        RUN Exercise_13/StartCar.p (ipiLiters).*/
            
    END METHOD.

END CLASS.