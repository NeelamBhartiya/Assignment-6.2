#1. Import the Titanic Dataset from the link Titanic Data Set.Perform the following:
#a. Is there any difference in fares by different class of tickets?Note - Show a boxplot displaying the distribution of fares by class
TitanicData<-read.csv("C:\\Users\\Windows 10\\Desktop\\Neelam_ACADGILD\\Assignment\\titanic3.csv",header=F,sep="," )
TitanicData<-TitanicData[-c(1),]
View(TitanicData)
colnames(TitanicData)<-c("pclass",
                         "survived",
                         "name",
                         "sex",
                         "age",
                         "sibsp",
                         "parch",
                         "ticket",
                         "fare",
                         "cabin",
                         "embarked",
                         "boat",
                         "body",
                         "home.dest")
View(TitanicData)
head(TitanicData)
boxplot(fare~pclass,data= TitanicData,
        main="Fares Versus Pclass",xlab="Fares",ylab="Class",col=topo.colors(3))



#b. Is there any association with Passenger class and gender?Note - Show a stacked bar chart


counts<-table(TitanicData$sex,TitanicData$pclass)
barplot(counts, main = "Distribution of Class by gender", xlab="Pclass", col=c("blue", "red"), legend = c("Female","Male"), names.arg = c("Pclass1st", "Pclass2nd","Pclass3rd"))


