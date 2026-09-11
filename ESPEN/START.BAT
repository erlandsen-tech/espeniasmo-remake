echo off

   if exist \mouse1\mouse.com goto loop2
   echo.
   echo	Du har ikke lagt inn filen MOUSE.COM p† katalogen MOUSE1.
   echo	Piltastene m† brukes til † bevege mark›ren.
   echo.
   echo NB!     PRESS ESC TASTEN NR TROLLBILDET VISES.
   echo         (Dette muliggj›r piltast styring.)
   echo.
   echo	Trykk en tast for † fortsette . . .
   echo.
   pause > nul
   \MetaWndo\mark
   goto loop3

:loop2
   \MetaWndo\mark
   \mouse1\mouse

:loop3
   set grdev=/e:4
   \MetaWndo\MetaWndo
   AdvRtNor espen.adv
   \MetaWndo\release
cd \
cd start
