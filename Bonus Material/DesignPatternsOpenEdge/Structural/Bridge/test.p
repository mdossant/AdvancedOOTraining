USING Progress.Lang.*.
USING Structural.Bridge.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE objIconWindow      AS IconWindow      NO-UNDO.
DEFINE VARIABLE objTransientWindow AS TransientWindow NO-UNDO.

// test IconWindow on XWindow system
objIconWindow = NEW IconWindow(NEW XWindowImp()).
objIconWindow:DrawBorder().

// test IconWindow on PMWindow system
/*objIconWindow = NEW IconWindow(NEW PMWindowImp()).          */
/*objIconWindow:DrawBorder().                                 */
/*                                                            */
/*// test TransientWindow on XWindow system                   */
/*objTransientWindow = NEW TransientWindow(NEW XWindowImp()). */
/*objTransientWindow:DrawCloseBox().                          */
/*                                                            */
/*// test TransientWindow on PMWindow system                  */
/*objTransientWindow = NEW TransientWindow(NEW PMWindowImp()).*/
/*objTransientWindow:DrawCloseBox().                          */
