set terminal png enhanced
set output "SnIsotopeRMSRadii.png"

set style line 1 lc rgb 'red' lt 1 pt 7 ps 0.5 lw 4

set ylabel '<r^{2}>^{1/2} [fm]' offset 0.0,0.0
set xlabel 'A' offset 0.0,0.8

set key left

set border lw 4.0

#set lmargin 8
#set rmargin 5
#set tmargin 1
#set bmargin 5

set xrange [106:126]
set yrange [4.52:4.70]
#set yrange [-0.7:0.7]
set xtics 106,2,126 offset 0.0,0.5 nomirror scale default
#set ytics 0,200,Y_max offset 0.0,0.0 nomirror scale 2.0,1.0 format '%.0f'

set bars 0
plot "SnIsotopeRMSRadii.txt" w yerrorbars ls 1 title 'Sn Isotopes',\
4.626*(((x/116)**(1/3.0))) ti "A^{1/3}" lw 2,\
4.626*(((x/116)**(1/6.0))) ti "A^{1/6}" lw 2
