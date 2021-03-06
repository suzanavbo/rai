fn = 'log.dat'
set yrange [-8.5:2.5]
set ytics('0' 0, '1' 0.5, '2' 1, '3' 1.5, '4' 2, 'V1' -1, 'V2' -2, 'V3' -3, 'V4' -4, 'V5' -5, 'V6' -6, '0' -8, '10' -7)
plot fn u 1:($2/2) with points pt 'o' title 'phase', \
     fn u 1:($3*.5-1) w lines title 'V1', \
     fn u 1:($4*.5-2) w lines title 'V2', \
     fn u 1:($5*.5-3) w lines title 'V3', \
     fn u 1:($6*.5-4) w lines title 'V4', \
     fn u 1:($7*.5-5) w lines title 'V5', \
     fn u 1:($8*.5-6) w lines title 'V6', \
     fn u 1:($11*10 - 8) w lines title 'x_e'

pause 1
reread
