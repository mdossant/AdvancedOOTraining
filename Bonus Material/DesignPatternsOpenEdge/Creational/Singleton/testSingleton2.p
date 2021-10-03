/*------------------------------------------------------------------------
  File        : testSingleton2
  Purpose     :
  Syntax      :
  Description : 
  Author(s)   :
  Created     :
  Notes       :
----------------------------------------------------------------------*/

USING Creational.Singleton.*.

DEFINE VARIABLE appProps1 AS ApplicationProperties2 NO-UNDO.
DEFINE VARIABLE appProps2 AS ApplicationProperties2 NO-UNDO.

ASSIGN
    appProps1       = ApplicationProperties2:getSingletonObject()
    appProps1:prop1 = 'value 1'
    appProps1:prop2 = 'value 2'
    appProps1:prop3 = 'value 3'.
    
MESSAGE "appProps1 =" appProps1 SKIP appProps1:prop1 SKIP appProps1:prop2 SKIP appProps1:prop3 VIEW-AS ALERT-BOX.

ASSIGN
    appProps2       = ApplicationProperties2:getSingletonObject()
    appProps2:prop1 = 'value 10'
    appProps1:prop2 = 'value 20'.
    
MESSAGE "appProps2 =" appProps2 SKIP appProps1:prop1 SKIP appProps2:prop2 SKIP appProps2:prop3 VIEW-AS ALERT-BOX.