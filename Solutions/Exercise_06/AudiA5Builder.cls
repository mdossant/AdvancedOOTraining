/*------------------------------------------------------------------------
  File        : AudiA5Builder
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Exercise_06.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Exercise_06.AudiA5Builder INHERITS CarBuilder: 
        
    CONSTRUCTOR PUBLIC AudiA5Builder (ipColor AS Color):
        DEFINE VARIABLE objWheel AS Wheel NO-UNDO.

        SUPER ("Audi","A5").
        
        objWheel = NEW AlloyWheel().
        
        ASSIGN 
            THIS-OBJECT:Color = ipColor.
        Wheel = objWheel.
        
    END CONSTRUCTOR.

END CLASS.