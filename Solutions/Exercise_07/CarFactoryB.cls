/*------------------------------------------------------------------------
  File        : Factory
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

CLASS Exercise_07.CarFactoryB:
    
    DEFINE STATIC TEMP-TABLE ttConfig
        FIELD cType  AS CHARACTER
        FIELD cClass AS CHARACTER
        INDEX idxType IS PRIMARY UNIQUE cType.
    DEFINE STATIC DATASET dsConfig FOR ttConfig.
        
    CONSTRUCTOR STATIC CarFactoryB (  ):
        DATASET dsConfig:READ-XML ("FILE", SEARCH("Exercise_07/config.xml"),?,?,?).
    END CONSTRUCTOR.

    METHOD PUBLIC STATIC Progress.Lang.Object createObject(ipcType AS CHARACTER):
        
        DEFINE VARIABLE objObject AS Progress.Lang.Object NO-UNDO.
        
        FIND FIRST ttConfig WHERE ttConfig.cType = ipcType.
        objObject = DYNAMIC-NEW ttConfig.cClass().
        
        RETURN objObject.

    END METHOD.        
    
END CLASS.