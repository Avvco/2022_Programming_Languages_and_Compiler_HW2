data <- read.csv("HW2data.csv")
print (data)
cat("\n")
for(i in c(1:10))
{ 
  num <- 0
  num <- data[i,4]*0.1 + data[i,5]*0.1 + data[i,6]*0.1 + data[i,7]*0.3 + data[i,8]*0.4
  
  if(num >= 90){
        cat (data[i,1], data[i,2], data[i,3], num,'A+',sep="\t")
   }else if(num >= 85){
        cat (data[i,1], data[i,2], data[i,3], num,'A',num,sep="\t")
   }else if(num >= 80){
        cat (data[i,1], data[i,2], data[i,3], num,'A-',sep="\t")
   }else if(num >= 77){
        cat (data[i,1], data[i,2], data[i,3], num,'B+',sep="\t")
   }else if(num >= 73){
        cat (data[i,1], data[i,2], data[i,3], num,'B',sep="\t")
   }else if(num >= 70){
        cat (data[i,1], data[i,2], data[i,3], num,'B-',sep="\t")
   }else if(num >= 67){
        cat (data[i,1], data[i,2], data[i,3], num,'C+',sep="\t")
   }else if(num >= 63){
        cat (data[i,1], data[i,2], data[i,3], num,'C',sep="\t")
   }else if(num >= 60){
        cat (data[i,1], data[i,2], data[i,3], num,'C-',sep="\t")
   }else if(num >= 50){
        cat (data[i,1], data[i,2], data[i,3], num,'D',sep="\t")
   }else{
        cat (data[i,1], data[i,2], data[i,3], num,'E',sep="\t")
   }
   cat("\n")
}
