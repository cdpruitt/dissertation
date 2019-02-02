#!/bin/bash

gnuplot reaction.pl
#eog SnIsotopeRMSRadii.png
epstopdf SnIsotopeRMSRadii.eps
evince SnIsotopeRMSRadii.pdf
