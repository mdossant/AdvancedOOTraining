/*------------------------------------------------------------------------
  File        : ApplicationProperties1
  Purpose     : Demonstrate singleton using public static prop
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Creational.Singleton.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.Singleton.ApplicationProperties1: 
        
    DEFINE PUBLIC PROPERTY prop1 AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY prop2 AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC PROPERTY prop3 AS CHARACTER NO-UNDO 
        GET.
        SET. 

    DEFINE PUBLIC STATIC PROPERTY singletonObj AS ApplicationProperties1 NO-UNDO
        GET ():
            IF NOT VALID-OBJECT(singletonObj) THEN DO:
                MESSAGE "will create singleton instance" VIEW-AS ALERT-BOX.
                singletonObj = NEW ApplicationProperties1().
            END.
            RETURN singletonObj.
        END GET.
        PRIVATE SET.

    // NOTE: static instance created when first static member used anywhere in session
    // * no need to define this method below other than to prove above point
    CONSTRUCTOR STATIC ApplicationProperties1 ():
        MESSAGE "static constructor" VIEW-AS ALERT-BOX.
    END CONSTRUCTOR.

    // IMPORTANT: define constructor as PRIVATE
    CONSTRUCTOR PRIVATE ApplicationProperties1 ():
        MESSAGE "private instance constructor" VIEW-AS ALERT-BOX.
    END CONSTRUCTOR.
    
END CLASS.