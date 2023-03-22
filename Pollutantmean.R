pollutantmean <- function(directory,pollutant,id=1:332)
{
        ## obtaining the required variables and storing them in my_data variable
        my_data <-list.files(path=directory)[id]
        ## reading the .csv files from my_data
        readfiles <- lapply(my_data,read.csv)
        ## combine all the data so that we can calculate the mean at once
        combine <- do.call(rbind,readfiles)
        ##calculate the mean 
        mean(combine[,pollutant],na.rm=TRUE)
        
}