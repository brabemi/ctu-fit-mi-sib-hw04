pic<-paste(picname,"1",".png", sep="");
png(file=pic, bg="white")
hist(time_delta, breaks=breaks, main="Histogram of times between flows", xlab="Time (s)")
dev.off()

pic<-paste(picname,"2",".png", sep="");
png(file=pic, bg="white")
plot(ecdf(time_delta), verticals=TRUE, do.points = FALSE, main="Empirical CDF of times between flows", xlab="Time (s)")
dev.off()

pics=2
