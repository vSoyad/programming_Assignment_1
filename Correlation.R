corr <- function(directory,threshold=0)
{
        source("Complete_1.R")
        obs <- complete(dir)
        obs <- subset(obs,nobs>=threshold)
        result <- c()
        file_list <- list.files(path=dir)[obs$ID]
        file_list
        for(file in file_list)
        {
               goodfile  <- na.omit(read.csv(file))
               corvector <- cor(goodfile$sulfate,goodfile$nitrate)

               result <- append(result,corvector)
        }
        result
}