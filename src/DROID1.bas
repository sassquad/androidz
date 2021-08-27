10REM Androidz title page and setup
20REM By Stephen Scott
30REM 9th August, 1993
40*FX229,1
50MODE7
60VDU23;8202;0;0;0;
70*L. DRSCRN
80TIME=0:REPEATUNTILTIME=300
90CLS
100PROCappear1(11,11,"Credits ? (Y/N)",135)
110REPEAT:A$=GET$:UNTILA$="Y"ORA$="y"ORA$="N"ORA$="n"
120IFA$="N"ORA$="n"THENGOTO150
130CLS
140PROCcredits
150CLS
160PROCappear2(6,6,"Please select an option:",131)
170PRINT''SPC5"1. Quick instructions"
180PRINT''SPC5"2. Long, sprawling instructions"
190PRINT''SPC5"3. Load the game"
200PRINT''SPC5"4. Play something else"
210REPEAT:A=GET:UNTILA=49ORA=50ORA=51ORA=52
220IFA=49THENPROCsimple:GOTO260
230IFA=50THENPROCnovel:GOTO260
240IFA=51THENGOTO260
250CLS:PRINT'"Pah! You have no taste for brilliant    games!":END
260PROCenv:PAGE=&1100:CHAIN"Droid2"
270END
280:
290DEFPROCappear1(x,y,m$,c)
300FOR a=1 TO LEN(m$)
310b%=ASCMID$(m$,a,1)
320x1=x-5:y1=y-5:x2=x+5:y2=y+5
330REPEAT
340PRINTTAB(0,y)CHR$(c)
350VDU31,x1,y1,32,31,x1,y2,32,31,x2,y1,32,31,x2,y2,32
360x1=x1+1:x2=x2-1
370y1=y1+1:y2=y2-1
380VDU31,x1,y1,b%,31,x1,y2,b%,31,x2,y1,b%,31,x2,y2,b%
390UNTIL x1=x AND x2=x AND y1=y AND y2=y
400x=x+1
410NEXT
420ENDPROC
430:
440DEFPROCappear2(x,y,m$,c)
450PRINTTAB(x-1,y)CHR$(c)
460FOR a=1 TO LEN(m$)
470b%=ASCMID$(m$,a,1)
480y2=22
490REPEAT:VDU31,x,y2,b%
500VDU31,x,y2+1,32
510y2=y2-1
520UNTIL y2=y-1
530VDU31,x,y,b%
540x=x+1
550NEXT
560ENDPROC
570:
580DEFPROCappear3(x,y,m$,c)
590PRINTTAB(x-1,y)CHR$(c)
600FOR a=1 TO LEN(m$)
610b%=ASCMID$(m$,a,1)
620x2=38
630REPEAT:VDU31,x2,y,b%,32
640x2=x2-1
650UNTIL x2=x-1
660VDU31,x,y,b%
670x=x+1
680NEXT
690ENDPROC
700:
710DEFPROCsimple
720CLS
730PRINT'CHR$134"Simple Instructions:"
740PRINT'" It is the year 2002, and you are a      member of the police's Robot            Apprehension Unit (R.A.U.) whose task   it is to destroy mad robots. You have   been assigned to deal with an incident"
750PRINT" at 20 factories whose robots have gone  haywire due to a power surge. You must  destroy them all with your laser gun."
760PRINT'" Beware! The robots can shoot back at    you! You start with 5 lives."
770PRINT'" Keys:"
780PRINT'"   Z - left        S = Noise"
790PRINT "   X - right       Q = Quiet"
800PRINT "   F - up          P = Pause"
810PRINT "   C - down        U = Unpause"
820PRINT "   G - fire"
830PRINT'CHR$136"PRESS THE SPACE BAR TO LOAD THE GAME"
840REPEATUNTILGET=32
850ENDPROC
860:
870DEFPROCnovel
880CLS
890PRINT'CHR$134"Long winded instructions:"
900PRINTTAB(10)"Any key to scroll"
910VDU28,0,23,39,3
920PRINT'" It is the year 2002. Robots are now     responsible for the manufacture of most household items like cars, televisions  and even furniture. The robots use a    neural network controlled by a main"
930PRINT " computer. Despite all this technology,  humans still keep tabs on the           manufacturing process, dealing with     any problems which rear themselves up."
940PRINT'" For any problems beyond the help of     the maintainance crew, the latest       addition to the police force - the      Robot Apprehension Unit (R.A.U.) - is   called in to deal with incidents where"
950PRINT " robots go out of control due to bugs    in their programming, or short circuits in the system etc."
960A=GET
970PRINT'" You play the part of one of the R.A.U.  officers - a position everyone wants    to be in, due to the high salary and    the variations in the kinds of          incidents that are faced each day."
980PRINT'" Because of the nature of the job, you   only get three weeks holiday at a set   period in the year. But one officer     must stay behind to deal with any calls that come in during that time. If you"
990PRINT " were lucky, you would be sent some      reserve officers from another station.  However, this year it is not the case,  due to a national shortage of officers. You happened to draw the short straw,   so you are that officer."
1000A=GET
1010PRINT'" Ordinary officers cannot be drafted in  to the R.A.U. because of the shortage   so you are on your own for the next     three weeks."
1020PRINT'" It is of course Murphy's Law that the   highest number of calls asking for      R.A.U. assistance come at exactly the   same time as those three weeks..."
1030PRINT'" The three weeks are nearly over; the    rest come back from Triassic Park       tomorrow, and so you naturally think    that you won't get any more calls for   the rest of the day. But it is not the  case."
1040A=GET
1050PRINT'" A call comes in saying that a huge      power surge has knocked out the neural  networks of twenty factories nearby,    and the robots have as a result gone on the rampage, killing the maintainance"
1060PRINT " crews with the laser welding            instruments attached to their arms.     There is no-one left to shut them down, and they would run on battery power for weeks even if the computer was shut"
1070PRINT " down. The only hope is for them to be   destroyed. You have been asked to do    the job, and it is a very substantial   job, much larger than any you have come across. The media have got hold of the"
1080PRINT " situation, and will make you either a   hero or a loser depending on the final  outcome."
1090A=GET
1100PRINT''" Use the Z,X,F and C keys to move about  each factory level, killing the robots  with your single firing laser gun,      activated by pressing G. The robots     can of course fire at you, but"
1110PRINT " they are also heat sensitive and will   home in your position if you linger     around in one place for too long. You   must use the natural cover of the       factory walls and machinery to help"
1120PRINT " evade the robots, although some         factories have less cover than others."
1130PRINT'" If you fail the task then your tally of kills is assessed by the Chief          Superintendant and his report will      appear on screen."
1140A=GET
1150PRINT'" Just think - if you complete the task   you will get your name in the papers    and be well rewarded with three weeks   at Isla Nobbler for the holiday of a    lifetime ... (eek!)"
1160PRINT'" Use S and Q to toggle the sound output  and P and U to pause and unpause the    game."
1170PRINT'" Good Luck!"
1180PRINT'''" There! Did you enjoy that read ? Not    quite the same as reading a sci-fi      novel, but it's only a silly plot for   a simple zap and blast game!"
1190PRINT'CHR$136"PRESS THE SPACE BAR TO LOAD THE GAME"
1200REPEATUNTILGET=32
1210VDU26
1220ENDPROC
1230:
1240DEFPROCenv
1250REM Walk sound
1260ENVELOPE1,4,0,0,0,5,2,14,27,80,-100,24,126,126
1270REM Ricochet
1280ENVELOPE2,1,1,-2,1,5,18,8,126,-1,-1,-8,120,90
1290REM Destroy
1300ENVELOPE3,1,-1,0,-5,0,0,0,50,-13,0,-2,108,74
1310REM End
1320ENVELOPE4,1,0,0,0,0,0,0,126,-1,0,-2,126,80
1330ENVELOPE5,1,0,0,0,0,0,0,5,-1,0,-2,100,80
1340ENVELOPE6,1,0,0,0,0,0,0,5,-1,0,-2,85,70
1350REM Laser fire
1360ENVELOPE7,129,-4,-3,0,20,10,20,127,-1,-1,-3,120,90
1370REM Death
1380ENVELOPE8,4,-4,-1,-1,20,20,20,1,0,0,0,1,1
1390REM Bell
1400ENVELOPE9,3,0,0,0,0,0,0,121,-10,-1,-2,120,120
1410ENDPROC
1420:
1430DEFPROCcredits
1440FORI%=1TO12
1450READ A%,X%,Y%,A$,C%
1460IFA%=2PROCappear2(X%,Y%,A$,C%)
1470IFA%=3PROCappear3(X%,Y%,A$,C%)
1480NEXT
1490TIME=0:REPEATUNTILTIME=300
1500CLS
1510FORI%=1TO11
1520READ A%,X%,Y%,A$,C%
1530IFA%=2PROCappear2(X%,Y%,A$,C%)
1540IFA%=3PROCappear3(X%,Y%,A$,C%)
1550NEXT
1560TIME=0:REPEATUNTILTIME=300
1570CLS
1580PROCappear1(3,11,"(C) Stephen Scott 1993, 2015, 2021",129)
1590TIME=0:REPEATUNTILTIME=300
1600CLS
1610ENDPROC
1620:
1630DATA2,10,3,"Design and Programming:",134
1640DATA3,11,5,"Stephen Scott",135
1650DATA2,10,7,"Graphic artists:",134
1660DATA3,11,9,"Stephen Scott",135
1670DATA3,11,11,"Lee Wilson",135
1680DATA3,11,12,"Graeme Scott",135
1690DATA2,10,14,"Level designs:",134
1700DATA3,11,16,"Stephen Scott",135
1710DATA3,11,18,"Graeme Scott",135
1720DATA3,11,19,"Lee Wilson",135
1730DATA3,11,20,"Neil Thomas",135
1740DATA3,11,21,"Ian Long",135
1750:
1760DATA2,10,3,"Sound effects:",134
1770DATA3,11,5,"Stephen Scott",135
1780DATA3,2,7,"and sounds from various games by",129
1790DATA3,11,9,"Mike Goldberg",135
1800DATA3,11,10,"Jon Perry",135
1810DATA2,10,12,"Title page and story:",134
1820DATA3,11,14,"Stephen Scott",135
1830DATA2,10,16,"Project commenced:",134
1840DATA3,11,18,"14th July, 1993",135
1850DATA2,10,20,"Project completed:",134
1860DATA3,11,22,"28th August, 1993",135
