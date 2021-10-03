/*------------------------------------------------------------------------
  File        : CarFactoryA
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_07.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_07.CarFactoryA: 

    METHOD PUBLIC STATIC Car createObject(ipcType AS CHARACTER):
        
        DEFINE VARIABLE objObject AS Car NO-UNDO.
        
        CASE ipcType:
            WHEN "Vorsprung durch Technik" THEN
                objObject = NEW Audi().
            WHEN "Freude am fahren" THEN
                objObject = NEW BMW().
            WHEN "Go Further" THEN
                objObject = NEW Ford().
        END CASE.
        
        RETURN objObject.

    END METHOD.        
    
END CLASS.