#-----------------------------------------------------------------------#
                         #Dissertation
#-----------------------------------------------------------------------#
data<- read.csv("data changed.csv",header=TRUE)
head(data)
barplot(data$ValueConsciousnessQ1)
boxplot(data$ValueConsciousnessQ1)
boxplot(data$ValueConsciousnessQ3)
boxplot(data$CartAbandonmentQ3)


plot(prcomp(de, scale = TRUE), type="line") 
d<-read.csv("de.csv",header=TRUE)
de<-as.data.frame(d)
summary(prcomp(de, scale = TRUE))



prcomp(de, scale = TRUE)$x[,1:6] 



library(corrgram)
corrgram(de)

biplot(prcomp(de, scale = TRUE))

#------------------------------------------------------------------------------#
                                  #PCA
#------------------------------------------------------------------------------#
install.packages("psych")
library(psych)
install.packages("GPArotation")
library(GPArotation)
prcomp(de, scale = TRUE)$x[,1:6]
principal(de, nfactors = 6, rotate="varimax")


?principal

p<-read.csv("properdata.csv",header=TRUE)

boxplot(p$Value_Consciousness)
boxplot(p$Comparison)

barplot(p$Gender)














