/*------------------------------------------------------------------------
    File        : create_xml
    Purpose     :
    Syntax      :
    Description :
    Author(s)   : 
    Created     :
    Notes       :
  ----------------------------------------------------------------------*/

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE TEMP-TABLE ttConfig
    FIELD cType  AS CHARACTER
    FIELD cClass AS CHARACTER
    INDEX idxType IS PRIMARY UNIQUE cType.
DEFINE DATASET dsConfig FOR ttConfig.

CREATE ttConfig.
ctype = "Vorsprung durch technik".
cclass = "Audi".
    
CREATE ttConfig.
ctype = "Freude am fahren".
cclass = "BMW".
    
DATASET dsconfig:WRITE-XML("file","config.xml").