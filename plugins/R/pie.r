my_sports_clr = my_sports[my_sports$Var1 <1024 | my_sports$Freq > threshold,]
other_len = sum(my_sports[my_sports$Var1 >= 1024 & my_sports$Freq <= threshold,]$Freq)

sp_slices = append(my_sports_clr$Freq, other_len)
sp_lbls = append(my_sports_clr$Var1, "other")

pic<-paste(picname,"1",".png", sep="");
png(file=pic, bg="white")
pie(sp_slices, labels = sp_lbls, main="Source ports")
dev.off()

my_dports_clr = my_dports[my_dports$Var1 <1024 | my_dports$Freq > threshold,]
other_len = sum(my_dports[my_dports$Var1 >= 1024 & my_dports$Freq <= threshold,]$Freq)

dp_slices = append(my_dports_clr$Freq, other_len)
dp_lbls = append(my_dports_clr$Var1, "other")

pic<-paste(picname,"2",".png", sep="");
png(file=pic, bg="white")
pie(dp_slices, labels = dp_lbls, main="Destination ports")
dev.off()

pics=2
