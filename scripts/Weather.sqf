//weather, added by BDR*Armilio*, ATC8
/*Help:
+[x, y, forced]: Array
+x: Number Easterly component (in m/s, positive = to the east)
+y: Number Northerly component (in m/s, positive = to the north)
*/	
setWind [5.9,0.1, true];	
//0 setGusts 0.3;
//0 setOvercast 0.2;
//0 setRain 0;
waituntil {time>60*75};
sleep 5;
setWind [5.9,0.1, true];	