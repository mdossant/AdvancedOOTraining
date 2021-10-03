/*------------------------------------------------------------------------
  File        : ApplicationProperties2
  Purpose     : Demonstrate singleton using private static prop + public static method
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Creational.Singleton.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.Singleton.ApplicationProperties2: 
        
    DEFINE PUBLIC PROPERTY prop1 AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY prop2 AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY prop3 AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PRIVATE STATIC PROPERTY singletonObj AS ApplicationProperties2 NO-UNDO
        GET.
        SET.

    // NOTE: static instance created when first static member used anywhere in session
    // * no need to define this method below other than to prove above point
    CONSTRUCTOR STATIC ApplicationProperties2 ():
        MESSAGE "static constructor" VIEW-AS ALERT-BOX.
    END CONSTRUCTOR.

    // IMPORTANT: define constructor as PRIVATE
    CONSTRUCTOR PRIVATE ApplicationProperties2 ():
        MESSAGE "private instance contructor" VIEW-AS ALERT-BOX.
    END CONSTRUCTOR.

    METHOD STATIC ApplicationProperties2 getSingletonObject ():
        IF NOT VALID-OBJECT(singletonObj) THEN DO:
            MESSAGE "will create singleton instance" VIEW-AS ALERT-BOX.
            singletonObj = NEW ApplicationProperties2().
        END.
        RETURN singletonObj.
    END METHOD.
    
END CLASS.