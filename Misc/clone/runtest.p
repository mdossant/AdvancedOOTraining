
/*------------------------------------------------------------------------
    File        : test.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : kmcintos
    Created     : Fri May 09 15:59:12 EDT 2014
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */



/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */
DEFINE VARIABLE oTest AS test NO-UNDO.
DEFINE VARIABLE oCopy AS test NO-UNDO.

oTest = NEW test().
oTest:testProp = "1".

oCopy = DYNAMIC-CAST(oTest:Clone(),"test").
MESSAGE oCopy:testProp
VIEW-AS ALERT-BOX.
oCopy:testProp = "2".
MESSAGE oTest:testProp oCopy:testProp
VIEW-AS ALERT-BOX.
