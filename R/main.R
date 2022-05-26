#df <- read.csv("No.csv")
#df <- read.csv("file.csv", header = FALSE)  #讀取 CSV 檔案（沒有標題列）

for(i in c(1:10)){ 
  num <- 0
  num <- num + 0.1*[i,4] +0.1*[i,5] +0.1*[i,6] +0.3*[i,7] +0.4*[i,8]
  cat(num,sep="\n")
  if(num >= 90){
        cat ('A+',sep="\n")
   }else if(num >= 85){
       cat ('A',sep="\n")
   }else if(num >= 80){
       cat ('A-',sep="\n")
   }else if(num >= 77){
       cat ('B+',sep="\n")
   }else if(num >= 73){
       cat ('B',sep="\n")
   }else if(num >= 70){
       cat ('B-',sep="\n")
   }else if(num >= 67){
       cat ('C+',sep="\n")
   }else if(num >= 63){
       cat ('C',sep="\n")
   }else if(num >= 60){
       cat ('C-',sep="\n")
   }else if(num >= 50){
       cat ('D',sep="\n")
   }else{
       cat ('E',sep="\n")
   }
}
