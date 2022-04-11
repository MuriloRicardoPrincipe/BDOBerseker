#RequireAdmin
#include <misc.au3>;- _p(2)
#include <AutoItConstants.au3>
local $wkey = '00'

Beep(150, 100)
while 1
while not _p('11') and not _p('12') and WinActive("Black Desert");ctrl alt






   ;WF
	  $wkey='28';down
	  if _p($wkey) then
		 send('{9 down}');WW
		 sleep(75)
		 send('{up down}');F
		 While _p($wkey)
		 wend
		 send('{up up}{9 up}')
	  endif

   ;Shift F
	  $wkey='27';right
	  if _p($wkey) then
		 send('{numpad8 up}')
		 send('{left down}');shift
		 send('{up down}');F
		 While _p($wkey)
		 wend
		 send('{up up}{left up}')
	  endif

   ;S F
	  $wkey='22';PGdown
	  if _p($wkey) then
		 send('{numpad8 up}')
		 send('{0 down}');S
		 send('{up down}');F
		 While _p($wkey)
		 wend
		 send('{up up}{0 up}')
	  endif

   ;SM2
	  $wkey='21';PGup
	  if _p($wkey) then
		 send('{0 down}');F
		 MouseDown('right');M2
		 While _p($wkey)
		 wend
		 MouseUp('right')
		 send('{0 up}')
	  endif



   ;Fera
	  $wkey='61';NP1
	  if _p($wkey) then
		 ;send('{end down}') ;np1 = c
		 While _p($wkey)
		 send('{F6 down}{F7 down}{F8 down}{F9 down}')
		 sleep(50)
		 send('{F9 up}{F8 up}{F7 up}{F6 up}')
		 sleep(100)
		 wend
		 ;send('{end up}')
	  endif

   ;rotação de cura
	  $wkey='6F';NP/
	  if _p($wkey) then
		 While _p($wkey)
		 send('{F4 down}{F7 down}{F8 down}')
		 sleep(50)
		 send('{F8 up}{F7 up}{F4 up}')
		 sleep(100)
		 wend
	  endif

   ;rotação de sa
	  $wkey='67';NP7
	  if _p($wkey) then
		 send('{left down}{insert down}');shift Q
		 While _p($wkey)
		 send('{F9 down}{F10 down}{F11 down}{F12 down}')
		 sleep(50)
		 send('{F12 up}{F11 up}{F10 up}{F9 up}')
		 sleep(100)
		 wend
		 send('{insert up}{left up}')
	  endif

   ;Grab
	  $wkey='69';NP9
	  if _p($wkey) then
		 send('{HOME down}');E
		 While _p($wkey)
			send('{F3 down}')
			sleep(150)
			send('{F3 up}')
			Wsleep(100)
		 wend
		 send('{HOME up}')
	  endif


   ;Destruidor Frenetico
	  $wkey='04';Mouse 3
	  if _p($wkey) then
		 send('{0 down}');SS
		 MouseDown('left')
		 While _p($wkey)
			Wsleep(50)
			MouseDown('right')
			Wsleep(150)
			MouseUp('right')
		 wend
		 MouseUp('left')
		 send('{0 up}')
	  endif


;trava ult
	  $wkey='6D';NPminus
	  if _p($wkey) then
		 send('{alt down}{b down}')
		 sleep(30)
		 send('{b up}{alt up}')
		 While _p($wkey)
		 wend
	  endif




wend
wend

func Wsleep($iiii=0)
   local $sleep_wsleep=TimerInit()
   while _p($wkey) and TimerDiff($sleep_wsleep)<=$iiii
   wend
EndFunc

Func Terminate()
		send('{alt up}')
		send("{LWIN up}")
		send("{LSHIfT up}")
		send("{RSHIfT up}")
		send("{LALT up}")
		send("{w up}")
		send("{a up}")
		send("{s up}")
		send("{d up}")
		send("{e up}")
		send("{c up}")
		Send('{f up}')
		send('{pgup up}')
		send('{up up}')
		send('{down up}')
		MouseUp("left")
		MouseUp("right")

   Beep(1500, 50)
    Exit
EndFunc
Func b($ii =3)
	$ii=$ii*100
	beep($ii,100)
EndFunc
Func _p($iii=0)
   return _IsPressed($iii)
EndFunc
Func _DisableKey()
EndFunc
