complete <- function(directory,ID=1:332)
{
        my_list <- list.files(path=directory)[ID]
        nobs <- c()
        counter <- 1
        for (file in my_list)
        {
                readfile <- na.omit(read.csv(file))
                nobs[counter]<-nrow(readfile)
                counter <- counter+1
        }
        obs <- data.frame("ID"=ID,"nobs"=nobs)
        obs
}