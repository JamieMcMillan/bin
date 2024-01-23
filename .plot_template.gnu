
# A 10-Sample Running Average
samples(x) = $0 > 9 ? 10 : ($0+1)
avg10(x) = (shift10(x), (back1+back2+back3+back4+back5+back6+back7+back8+back9+back10)/samples($0))
shift10(x) = (back10 = back9, back9 = back8, back8 = back7, back7 = back6, back6 = back5, back5 = back4, back4 = back3, back3 = back2, back2 = back1, back1 = x)
init(x) = (back1 = back2 = back3 = back4 = back5 = back6 = back7 = back8 = back9 = back10 = sum = 0)
sum = init(0)

# A Copied 10-Sample Running Average
samplesZ(x) = $0 > 9 ? 10 : ($0+1)
avg10Z(x) = (shift10Z(x), (back1Z+back2Z+back3Z+back4Z+back5Z+back6Z+back7Z+back8Z+back9Z+back10Z)/samplesZ($0))
shift10Z(x) = (back10Z = back9Z, back9Z = back8Z, back8Z = back7Z, back7Z = back6Z, back6Z = back5Z, back5Z = back4Z, back4Z = back3Z, back3Z = back2Z, back2Z = back1Z, back1Z = x)
initZ(x) = (back1Z = back2Z = back3Z = back4Z = back5Z = back6Z = back7Z = back8Z = back9Z = back10Z = sumZ = 0)
sumZ = initZ(0)

# A Second Copied 10-Sample Running Average
samplesY(x) = $0 > 9 ? 10 : ($0+1)
avg10Y(x) = (shift10Y(x), (back1Y+back2Y+back3Y+back4Y+back5Y+back6Y+back7Y+back8Y+back9Y+back10Y)/samplesY($0))
shift10Y(x) = (back10Y = back9Y, back9Y = back8Y, back8Y = back7Y, back7Y = back6Y, back6Y = back5Y, back5Y = back4Y, back4Y = back3Y, back3Y = back2Y, back2Y = back1Y, back1Y = x)
initY(x) = (back1Y = back2Y = back3Y = back4Y = back5Y = back6Y = back7Y = back8Y = back9Y = back10Y = sumY = 0)
sumY = initY(0)

# ---------------------------------------------------
# Plotting 
# ---------------------------------------------------
reset

set terminal postscript eps size 12,6 enhanced color font 'Helvetica,32'
set output '.eps'
set ytics format "%3.2f"
set xlabel ''
set ylabel ''
set grid




# ---------------------------------------------------
# Plotting Over Time
# ---------------------------------------------------

reset
set terminal postscript eps size 12,6 enhanced color font 'Helvetica,22'
set output '.eps'

set timefmt "%H:%M:%S"
set xdata time
set format x "%H:%M:%S"
set xtics rotate by 60 right
set xlabel 'Time / hh:mm:ss'
set ylabel ''
set ytics format "%4.2f"
set grid

plot ''


 
# ---------------------------------------------------
# Plotting [LaTeX]
# ---------------------------------------------------
reset

set terminal cairolatex pdf size 6,3
set output 'latex.tex'
set xtics format '%03.1f' 
set ytics format '\(10^{%T}\)'
set xlabel 'Wavelength / \SI{}{\micro\metre}'
set ylabel '' offset 4,0
set key outside center top maxrows 2



