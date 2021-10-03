 
 /*------------------------------------------------------------------------
    File        : test2
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : kmcintos
    Created     : Fri May 09 15:57:16 EDT 2014
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.



CLASS test: 

    DEFINE PUBLIC PROPERTY testProp AS CHARACTER NO-UNDO
    GET.
    SET.
    
	/*------------------------------------------------------------------------------
			Purpose:  																	  
			Notes:  																	  
	------------------------------------------------------------------------------*/

	METHOD PUBLIC OVERRIDE Progress.Lang.Object Clone(  ):
		
		DEFINE VARIABLE oResult AS test NO-UNDO.
        
        oResult = NEW test().
        oResult:testProp = THIS-OBJECT:testProp.
        
		RETURN CAST(oResult,Progress.Lang.Object).

	END METHOD.

END CLASS.