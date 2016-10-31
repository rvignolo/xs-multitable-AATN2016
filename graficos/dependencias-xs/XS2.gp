#!/usr/bin/gnuplot -persist
#
#    
#    	G N U P L O T
#    	Version 5.0 patchlevel rc2    last modified 2014-08-28 
#    
#    	Copyright (C) 1986-1993, 1998, 2004, 2007-2014
#    	Thomas Williams, Colin Kelley and many others
#    
#    	gnuplot home:     http://www.gnuplot.info
#    	mailing list:     gnuplot-beta@lists.sourceforge.net
#    	faq, bugs, etc:   type "help FAQ"
#    	immediate help:   type "help"  (plot window: hit 'h')
# set terminal qt 0 font "Sans,9"
# set output
unset clip points
set clip one
unset clip two
set bar 1.000000 front
set border 31 front lt black linewidth 1.000 dashtype solid
set timefmt z "%d/%m/%y,%H:%M"
set zdata 
set timefmt y "%d/%m/%y,%H:%M"
set ydata 
set timefmt x "%d/%m/%y,%H:%M"
set xdata 
set timefmt cb "%d/%m/%y,%H:%M"
set timefmt y2 "%d/%m/%y,%H:%M"
set y2data 
set timefmt x2 "%d/%m/%y,%H:%M"
set x2data 
set boxwidth
set style fill  empty border
set style rectangle back fc  bgnd fillstyle   solid 1.00 border lt -1
set style circle radius graph 0.02, first 0, 0 
set style ellipse size graph 0.05, 0.03, first 0 angle 0 units xy
set dummy x, y
set format x "% g"
set format y "% g"
set format x2 "% g"
set format y2 "% g"
set format z "%.3e"
set format cb "%.2f"
set format r "% g"
set angles radians
set grid nopolar
set grid xtics nomxtics ytics nomytics noztics nomztics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
# set grid layerdefault   lt 0 linewidth 0.500 dashtype -1,  lt 0 linewidth 0.500 dashtype -1
set raxis
set style parallel front  lt black linewidth 2.000 dashtype solid
set key title ""
set key inside right top vertical Right noreverse enhanced autotitle nobox
set key noinvert samplen 4 spacing 1 width 0 height 0 
set key maxcolumns 0 maxrows 0
set key noopaque
unset label
unset arrow
set style increment default
unset style line
unset style arrow
set style histogram clustered gap 2 title textcolor lt -1
unset object
set style textbox transparent margins  1.0,  1.0 border
unset logscale
set offsets 0, 0, 0, 0
set pointsize 1
set pointintervalbox 1
set encoding default
unset polar
unset parametric
unset decimalsign
set view 49, 320, 1, 1
set samples 100, 100
set isosamples 10, 10
set surface 
unset contour
set cntrlabel  format '%8.3g' font '' start 5 interval 20
set mapping cartesian
set datafile separator whitespace
unset hidden3d
set cntrparam order 4
set cntrparam linear
set cntrparam levels auto 5
set cntrparam points 5
set size ratio 0 1,1
set origin 0,0
set style data points
set style function lines
set xzeroaxis lt nodraw linewidth 1.000 dashtype solid
set yzeroaxis lt nodraw linewidth 1.000 dashtype solid
set zzeroaxis lt nodraw linewidth 1.000 dashtype solid
set x2zeroaxis lt nodraw linewidth 1.000 dashtype solid
set y2zeroaxis lt nodraw linewidth 1.000 dashtype solid
set ticslevel 0
set tics scale  1, 0.5, 1, 1, 1
set mxtics default
set mytics default
set mztics default
set mx2tics default
set my2tics default
set mcbtics default
set mrtics default
set xtics border in scale 1,0.5 mirror norotate  autojustify
set xtics autofreq  norangelimit
set ytics border in scale 1,0.5 mirror norotate  autojustify
set ytics autofreq  norangelimit
set ztics border in scale 1,0.5 nomirror norotate  autojustify
set ztics autofreq  norangelimit
set nox2tics
set noy2tics
set cbtics border in scale 1,0.5 mirror norotate  autojustify
set cbtics autofreq  norangelimit
set rtics axis in scale 1,0.5 nomirror norotate  autojustify
set rtics autofreq  norangelimit
set title "" 
set title  font "" norotate
set timestamp bottom 
set timestamp "" 
set timestamp  font "" norotate
set rrange [ * : * ] noreverse nowriteback
set trange [ * : * ] noreverse nowriteback
set urange [ * : * ] noreverse nowriteback
set vrange [ * : * ] noreverse nowriteback
set xlabel "P_{l}" 
set xlabel  font "" textcolor lt -1 norotate
set x2label "" 
set x2label  font "" textcolor lt -1 norotate
set xrange [ * : * ] noreverse nowriteback
set x2range [ * : * ] noreverse nowriteback
set ylabel "P_{g}" 
set ylabel  font "" textcolor lt -1 rotate by -270
set y2label "" 
set y2label  font "" textcolor lt -1 rotate by -270
set yrange [ * : * ] noreverse nowriteback
set y2range [ * : * ] noreverse nowriteback
set zlabel "XS_i [1/cm]" 
set zlabel  offset character -4, 0, 0 font "" textcolor lt -1 rotate by -270
set zrange [ * : * ] noreverse nowriteback
set cblabel "" 
set cblabel  font "" textcolor lt -1 rotate by -270
set cbrange [ * : * ] noreverse nowriteback
set zero 1e-08
set lmargin  -1
set bmargin  -1
set rmargin  -1
set tmargin  -1
set locale "en_US.UTF-8"
set pm3d explicit at s
set pm3d scansautomatic
set pm3d interpolate 1,1 flush begin noftriangles noborder corners2color mean
set palette positive nops_allcF maxcolors 0 gamma 1.5 color model RGB 
set palette rgbformulae 7, 5, 15
# set colorbox user
# set colorbox vertical origin screen 0.9, 0.25, 0 size screen 0.015, 0.5, 0 front bdefault
# set style boxplot candles range  1.50 outliers pt 7 separation 1 labels auto unsorted
unset colorbox
set loadpath 
set fontpath 
set psdir
set fit brief noerrorvariables nocovariancevariables errorscaling prescale nowrap
GNUTERM = "wxt"
ARGC = 0
ARG0 = ""
x = 0.0

set terminal pdf size 24cm,14cm
set output "XS2.pdf"

splot "./XS-interp-q4000.dat" u 1:2:3 palette with lines notitle, "./XS-q4000.dat" u 1:2:3:3 palette pt 7 ps 0.6 ti " XS_i a Q = 4000.0 MWd/tU "
#    EOF
