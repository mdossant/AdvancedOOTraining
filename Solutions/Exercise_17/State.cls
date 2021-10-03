  /*------------------------------------------------------------------------
    File        : State
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   :
    Created     :
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_17.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_17.State ABSTRACT: 

    CONSTRUCTOR PUBLIC State ():
        MESSAGE THIS-OBJECT:GetClass():TypeName VIEW-AS ALERT-BOX TITLE "State Contructor".
    END CONSTRUCTOR.

END CLASS.