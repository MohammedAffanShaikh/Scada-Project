On Show:

SW1=0;
SW22=0;
BOXH=0;
HOOKHI=0;
BOXV=0;
K=0;
BOX1=0;
VH=0;

Showing:
  
IF SW1==1 THEN 

IF BOXH<20 THEN BOXH=BOXH+1;ENDIF;


IF BOXH==20 AND BOXV==0 THEN SW22=1;ENDIF;

IF SW22==1 AND BOXH==20  AND HOOKHI<100 THEN HOOKHI=HOOKHI+1;ENDIF;


IF HOOKHI==100 THEN SW22=0;ENDIF;

IF SW22==0 AND BOXV<100  AND BOXH==20 THEN BOXV=BOXV+1;ENDIF;

IF SW22==0 AND HOOKHI>0 THEN HOOKHI=HOOKHI - 1;ENDIF;


IF BOXV==100 AND HOOKHI==0 AND BOXH<100 THEN BOXH=BOXH+1;ENDIF;


IF BOXV==100 AND HOOKH<80 THEN HOOKH=HOOKH+1;ENDIF;


IF BOXH==100 AND BOXV==100 THEN SW22=1;ENDIF;

IF SW22==1 AND BOXH==100  AND HOOKHI<100 THEN HOOKHI=HOOKHI+1;ENDIF;

IF SW22==1 AND BOXV>0 AND BOXH==100 THEN BOXV=BOXV - 1 ;ENDIF;

IF BOXH==100 AND BOXV==0 THEN K=1;ENDIF;

IF K==1 AND BOX1<100 AND VH<100 THEN BOX1=BOX1 +1 ; VH=VH+1;ENDIF;



ENDIF;
