set terminal eps enhanced
set output "SnIsotopeRMSRadii.eps"

set style line 1 lc rgb 'black' lt 1 pt 7 ps 0.8 lw 4

set ylabel '<r^{2}>^{1/2} [fm]' offset -0.5,0.0
set ylabel font ", 20"
set xlabel 'A' offset 0.0,0.0
set xlabel font ",15"

set key at 118,4.57 left

set border lw 4.0

set lmargin 12
#set rmargin 5
#set tmargin 1
#set bmargin 5

set xrange [106:126]
set yrange [4.54:4.68]
set ytics font ", 15"

set xtics 106,2,126 offset 0.0,0.0 nomirror scale default
set xtics font ", 15"
#set ytics 0,200,Y_max offset 0.0,0.0 nomirror scale 2.0,1.0 format '%.0f'

set style rect fc ls -1 fs solid 0.05 noborder
set obj 1 rect from 106, graph 0 to 114, graph 1 behind

set label 1 '0g7/2' at 111, 4.66 left
set label 1 font ", 15"
set label 2 '1d5/2' at 111, 4.65 left
set label 2 font ", 15"

set obj 2 rect from 114, graph 0 to 126, graph 1 fc rgb 'yellow' behind

set label 3 '2s1/2' at 115, 4.59 left
set label 3 font ", 15"
set label 4 '1d3/2' at 115, 4.58 left
set label 4 font ", 15"
set label 5 '0h11/2' at 115, 4.57 left
set label 5 font ", 15"


set bars 0
plot 4.626*(((x/116)**(1/3.0))) ti "A^{1/3}" lc rgb 'blue' lw 6,\
     4.626*(((x/116)**(1/6.0))) ti "A^{1/6}" lc rgb 'red' lw 6,\
     "SnIsotopeRMSRadii.txt" w yerrorbars ls 1 title 'Sn isotopes'
