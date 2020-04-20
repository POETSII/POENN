require(gdata)
dSpike <- read.csv(file = 'nSpikes.csv', header = FALSE)
#for (i in 1:99)
#append(dSpikex, c(dSpike [,1]),after=98)
#dSpikex = rep(c(dSpike [,1]),time=100)
dSpikex <- c(
dSpike [,1], dSpike [,1],dSpike [,1],dSpike [,1], dSpike [,1],dSpike [,1],
dSpike [,1], dSpike [,1],dSpike [,1],dSpike [,1], dSpike [,1],dSpike [,1],
dSpike [,1], dSpike [,1],dSpike [,1],dSpike [,1], dSpike [,1],dSpike [,1],
dSpike [,1], dSpike [,1],dSpike [,1],dSpike [,1], dSpike [,1],dSpike [,1],
dSpike [,1], dSpike [,1],dSpike [,1],dSpike [,1], dSpike [,1],dSpike [,1],
dSpike [,1], dSpike [,1],dSpike [,1],dSpike [,1], dSpike [,1],dSpike [,1],
dSpike [,1], dSpike [,1],dSpike [,1],dSpike [,1], dSpike [,1],dSpike [,1],
dSpike [,1], dSpike [,1],dSpike [,1],dSpike [,1], dSpike [,1],dSpike [,1],
dSpike [,1], dSpike [,1],dSpike [,1],dSpike [,1], dSpike [,1],dSpike [,1],
dSpike [,1], dSpike [,1],dSpike [,1],dSpike [,1], dSpike [,1],dSpike [,1],
dSpike [,1], dSpike [,1],dSpike [,1],dSpike [,1], dSpike [,1],dSpike [,1],
dSpike [,1], dSpike [,1],dSpike [,1],dSpike [,1], dSpike [,1],dSpike [,1],
dSpike [,1], dSpike [,1],dSpike [,1],dSpike [,1], dSpike [,1],dSpike [,1],
dSpike [,1], dSpike [,1],dSpike [,1],dSpike [,1], dSpike [,1],dSpike [,1],
dSpike [,1], dSpike [,1],dSpike [,1],dSpike [,1], dSpike [,1],dSpike [,1],
dSpike [,1], dSpike [,1],dSpike [,1],dSpike [,1], dSpike [,1],dSpike [,1],
dSpike [,1], dSpike [,1],dSpike [,1])

dSpikey<- c(
dSpike [,2] ,dSpike [,3] ,dSpike [,4] ,dSpike [,5] ,dSpike [,6] ,dSpike [,7],
dSpike [,8] ,dSpike [,9] ,dSpike [,10],dSpike [,11],dSpike [,12],dSpike [,13],
dSpike [,14],dSpike [,15],dSpike [,16],dSpike [,17],dSpike [,18],dSpike [,19],
dSpike [,20],dSpike [,21],dSpike [,22],dSpike [,23],dSpike [,24],dSpike [,25],
dSpike [,26],dSpike [,27],dSpike [,28],dSpike [,29],dSpike [,30],dSpike [,31],
dSpike [,32],dSpike [,33],dSpike [,34],dSpike [,35],dSpike [,36],dSpike [,37],
dSpike [,38],dSpike [,39],dSpike [,40],dSpike [,41],dSpike [,42],dSpike [,43],
dSpike [,44],dSpike [,45],dSpike [,46],dSpike [,47],dSpike [,48],dSpike [,49],
dSpike [,50],dSpike [,51],dSpike [,52],dSpike [,53],dSpike [,54],dSpike [,55],
dSpike [,56],dSpike [,57],dSpike [,58],dSpike [,59],dSpike [,60],dSpike [,61],
dSpike [,62],dSpike [,63],dSpike [,64],dSpike [,65],dSpike [,66],dSpike [,67],
dSpike [,68],dSpike [,69],dSpike [,70],dSpike [,71],dSpike [,72],dSpike [,73],
dSpike [,74],dSpike [,75],dSpike [,76],dSpike [,77],dSpike [,78],dSpike [,79],
dSpike [,80],dSpike [,81],dSpike [,82],dSpike [,83],dSpike [,84],dSpike [,85],
dSpike [,86],dSpike [,87],dSpike [,88],dSpike [,89],dSpike [,90],dSpike [,91],
dSpike [,92],dSpike [,93],dSpike [,94],dSpike [,95],dSpike [,96],dSpike [,97],
dSpike [,98],dSpike [,99],dSpike [,100])

pdf("Raster.pdf")
plot(dSpikex,dSpikey,ylim=c(0,100), type="p" ,col = "blue", cex=0.7, pch="|", main="Raster plot of spiking activity of neurons",
ylab="Neurons",xlab="Time (ms)")
dev.off()

