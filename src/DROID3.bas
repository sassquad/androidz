10REM Androidz #3
20REM by Stephen Scott
30REM August 1993
40REM
50:
60sc%=Z%
70PROCverdict
80PAGE=&1100:CHAIN"DROID2"
90END
100:
110DEFPROCverdict:FORI=0TO1:PRINTTAB(0,I)CHR$141"Incident Report";:NEXT:PRINTTAB(24)CHR$140CHR$135"24th May, 2002";:PRINTCHR$145STRING$(39,CHR$172):PRINT" You scored";CHR$136;sc%:PRINT'" FURTHER COMMENTS";CHR$145STRING$(22,CHR$172);
120IFsc%<=10m$=" Abysmal performance! You're out of the  police force!"
130IFsc%>=11ANDsc%<=20m$=" For a member of the elite R.A.U. you    didn't do a very good job. An absolute  shambles. You have been put down in     rank to a constable."
140IFsc%>=21ANDsc%<=40m$=" Not a bad performance for a newcomer to the R.A.U. But you had the potential to finish the job. I hope you do better    next time!"
150IFsc%>=41ANDsc%<=70m$=" You've managed the average number of    kills of an experienced officer, and    we hope you improve to a true marksman  on your next assignment."
160IFsc%>=71ANDsc%<=110m$=" Well! For a beginner you did a very     good performance, particularly on those last few levels. You are getting better all the time."
170IFsc%>=111ANDsc%<=160m$=" A magnificent job. You very nearly did  all the factories. You are a true       member of the R.A.U."
180IFsc%>160m$=" I was astounded by the job you did      today. You are now the envy of the      entire force, and your name is on the   news. I received a letter from the      Queen today. You're up for a bravery    award!"
190PRINT:FORa=1TOLEN(m$):PRINT;MID$(m$,a,1);:TIME=0:REPEATUNTILTIME=5:NEXT:PRINTTAB(0,19)CHR$145STRING$(39,CHR$172);TAB(14,20)"Chief Superintendant Scott";:PRINTCHR$145STRING$(39,CHR$172)
200PRINTTAB(0,22)CHR$136"Press the spacebar to play again...";:REPEATUNTILGET=32:ENDPROC
