# This code is analysing the temporal overlap between species

# install.packages("overlap")

library(overlap)

data(kerinci)

circulartime <- kerinci$Time * 2 * pi

kerinci$circ <- kerinci$Time * 2 * pi

tiger <- kerinci[kerinci$Sps=="tiger",]

timetiger <- tiger$circ
densityPlot(timetiger)

