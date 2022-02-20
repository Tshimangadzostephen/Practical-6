#Name : TSHIMANGADZO
#Surname : MUNZHELELE
#Student number : U18142274


library(ggplot2)
library(readr)

Peng <- read.table('penguins.txt',header=TRUE,sep='\t')
Infl <- read_csv('appendicitis_influenza.csv')

#Question 1(a)
q1a <- ggplot(Peng,aes(x=Duration.min., y=Dive.Heart.Rate)) + geom_point()
q1a

#Question 1(b)
q1b <- ggplot(Peng,aes(x=Duration.min., y=Dive.Heart.Rate)) +
       geom_point(aes(color=Bird), shape='*', size = 5)
q1b

#Question 1(c)
q1c <- ggplot(Peng,aes(x=Duration.min., y=Dive.Heart.Rate)) +
       geom_point(aes(color=Bird), shape='*', size = 5) +
       labs( x = "Depth in meters",
             y ="Heart Rate",
             title = "Heart rate vs Depth of penguin dives")
q1c

#Question 2(a)
q2a <- ggplot(Peng,aes(x=Bird,y=Dive.Heart.Rate)) + geom_boxplot()
q2a

#Question 2(b)
q2b <- ggplot(Peng,aes(x=Bird,y=Dive.Heart.Rate)) +
       geom_boxplot(aes(fill="blue"),color="red",alpha=0.2)
q2b

#Question 2(c)
q2c <- ggplot(Peng,aes(x=Bird,y=Dive.Heart.Rate)) +
       geom_boxplot(aes(fill="blue"),color="red",alpha=0.2) +
       labs(title ="Spread of Dive heart rates by bird species")
q2c

#Question 3(a)
q3a <- ggplot(Infl, aes(x=Year)) +
       geom_line(aes(y=Influenza), color ="red") +
       geom_line(aes(y=Appendicitis),color ="blue")
q3a

#Question 3(b)
q3b <- ggplot(Infl, aes(x=Year)) +
       geom_line(aes(y=Influenza), color ="red") +
       geom_line(aes(y=Appendicitis),color ="blue")+
       geom_area(aes(y=Appendicitis), fill = "blue", alpha = 0.6) +
       geom_area(aes(y=Influenza), fill = "red")
q3b


#Question 3(c)
q3c <- ggplot(Infl, aes(x=Year)) +
       geom_line(aes(y=Influenza), color ="red") +
       geom_line(aes(y=Appendicitis),color ="blue")+
       geom_area(aes(y=Appendicitis), fill = "blue", alpha = 0.6) +
       geom_area(aes(y=Influenza), fill = "red") +
       labs(x ="Year",
            y ="Number of cases",
            title ="Number of Influenza and Appendicitis case from 1970 to 2005")
q3c


