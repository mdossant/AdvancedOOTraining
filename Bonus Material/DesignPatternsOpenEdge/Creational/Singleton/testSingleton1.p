/*------------------------------------------------------------------------
  File        : testSingleton1
  Purpose     :
  Syntax      :
  Description : 
  Author(s)   :
  Created     :
  Notes       :
----------------------------------------------------------------------*/

USING Creational.Singleton.*.

DEFINE VARIABLE appProps1 AS ApplicationProperties1 NO-UNDO.
DEFINE VARIABLE appProps2 AS ApplicationProperties1 NO-UNDO.

ASSIGN
    appProps1       = ApplicationProperties1:singletonObj
    appProps1:prop1 = 'value 1'
    appProps1:prop2 = 'value 2'
    appProps1:prop3 = 'value 3'.
    
MESSAGE "appProps1 =" appProps1 SKIP appProps1:prop1 SKIP appProps1:prop2 SKIP appProps1:prop3 VIEW-AS ALERT-BOX.

ASSIGN
    appProps2       = ApplicationProperties1:singletonObj
    appProps2:prop1 = 'value 10'
    appProps1:prop2 = 'value 20'.
    
MESSAGE "appProps2 =" appProps2 SKIP appProps1:prop1 SKIP appProps2:prop2 SKIP appProps2:prop3 VIEW-AS ALERT-BOX.