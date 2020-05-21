#require(gdata)
dVt <- read.csv(file = 'vt1k.csv', header = FALSE)
#dVt <- read.csv(file = 'Spike_singleN.csv', header = FALSE)
#for (i in 1:99)
#append(dSpikex, c(dSpike [,1]),after=98)
#dSpikex = rep(c(dSpike [,1]),time=100)
#vtPl <- c(dVt [,1],dVt [,2])


#pdf("vt.pdf")
#png("Spike_singleN_RBM.png")

png("Spike_singleN_RNN_rand.png")
plot(dVt [,1],dVt [,2], ylim=c(-65,0) ,col = "blue",type="l", #main="Spiking activity for singel neuron in RBM topology",
main="Spiking activity for singel neuron in randomly connected (RNN)",
ylab="v (mV)",xlab="Time (ms)")
dev.off()

