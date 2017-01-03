 x <- as.matrix(read.csv(file="/tmp/tmp.flw",head=TRUE,sep=","))#,strip.white=TRUE))

 y<-nrow(x)
 f<-array(0,c(y,5))

 hsrc<-as.data.frame(table(x[,"SOURCE"]))
 row.names(hsrc)<-hsrc[,1]
 hdst<-as.data.frame(table(x[,"DESTINATION"]))
 row.names(hdst)<-hdst[,1]
 f[,1]<-hsrc[x[,"SOURCE"],2]
 f[,2]<-hdst[x[,"DESTINATION"],2]


 hsport<-read.csv(file="/tmp/sport.flw",head=TRUE,sep=",")#,strip.white=TRUE)
 tsport<-array(0,c(nrow(unique(hsport[,1:2])) ,1  )    )
 dupl<-duplicated(hsport[,1:2])
 names(tsport)<-paste(hsport[!dupl,"DESTINATION"],as.integer(hsport[!dupl,"SPORT"]),sep=":")
 tsport[]<-hsport[!dupl,"FLOWS"]
 f[,3]<-as.integer(tsport[paste(x[,"DESTINATION"],as.integer(x[,"SPORT"]),sep=":")])
#######################################################################################
#row.names(hsport)<-paste(hsport[,"DESTINATION"],as.integer(hsport[,"SPORT"]),sep=":")#
#f[,3]<-as.integer(hsport[paste(x[,"DESTINATION"],as.integer(x[,"SPORT"]),sep=":")])  #
#######################################################################################
rm(tsport)

 hdport<-read.csv(file="/tmp/dport.flw",head=TRUE,sep=",")#,strip.white=TRUE)
 tdport<-array(0,c(nrow(unique(hdport[,1:2])) ,1  )    )
 dupl<-duplicated(hdport[,1:2])
 names(tdport)<-paste(hdport[!dupl,"SOURCE"],as.integer(hdport[!dupl,"DPORT"]),sep=":")
 tdport[]<-hdport[!dupl,"FLOWS"]
 f[,4]<-as.integer(tdport[paste(x[,"SOURCE"],as.integer(x[,"DPORT"]),sep=":")])
##################################################################################
#row.names(hdport)<-paste(hdport[,"SOURCE"],as.integer(hdport[,"DPORT"]),sep=":")#
#f[,4]<-as.integer(hdport[paste(x[,"SOURCE"],as.integer(x[,"DPORT"]),sep=":")])  #
##################################################################################
rm(tdport)
f[,5]<-as.numeric(x[,"DURATION"])
#1430-1435

tmp_td = sort(x[,"DATE"])
time_delta = as.numeric(difftime(tmp_td[2:y], tmp_td[1:y-1]))

my_sports = data.frame(table(as.numeric(x[,"SPORT"])))
my_sports$Var1 = as.numeric(as.character(my_sports$Var1))
#my_sports_clr = my_sports[my_sports$Var1 <1024 | my_sports$Freq > 1,]
#other_len = nrow(my_sports[my_sports$Var1 >= 1024 & my_sports$Freq <= 1,])

#sp_slices = append(my_sports_clr$Freq, other_len)
#sp_lbls = append(my_sports_clr$Var1, "other")

my_dports = data.frame(table(as.numeric(x[,"DPORT"])))
my_dports$Var1 = as.numeric(as.character(my_dports$Var1))
#my_dports_clr = my_dports[my_dports$Var1 <1024 | my_dports$Freq > 1,]
#other_len = nrow(my_dports[my_dports$Var1 >= 1024 & my_dports$Freq <= 1,])

#dp_slices = append(my_dports_clr$Freq, other_len)
#dp_lbls = append(my_dports_clr$Var1, "other")
