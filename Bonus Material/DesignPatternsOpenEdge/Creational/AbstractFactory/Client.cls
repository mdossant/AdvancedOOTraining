/*------------------------------------------------------------------------
  File        : Client
  Purpose     : 
  Syntax      : 
  Description : 
  Author(s)   :
  Created     :
  Notes       : 
----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Creational.AbstractFactory.Factory.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Creational.AbstractFactory.Client:

    CONSTRUCTOR PUBLIC Client (widgetFactory AS WidgetFactory):
        DEFINE VARIABLE win AS FactoryWindow    NO-UNDO.
        DEFINE VARIABLE bar AS FactoryScrollBar NO-UNDO.
        DEFINE VARIABLE btn AS FactoryButton    NO-UNDO.
                
        ASSIGN
            win = widgetFactory:CreateWindow()
            bar = widgetFactory:CreateScrollBar()
            btn = widgetFactory:CreateButton().
           
        MESSAGE
            win SKIP
            win:widgetType SKIP(1)
            bar SKIP
            bar:widgetType SKIP(1)
            btn SKIP
            btn:widgetType
            VIEW-AS ALERT-BOX.
            
    END CONSTRUCTOR.       

END CLASS.