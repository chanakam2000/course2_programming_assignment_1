
pollutantmean <- function(directory, pollutant, id =1:332)
{
        pollutant_data <- numeric(0)
        
        for (id in id)
        {
                if (id <10)
                {
                        file_name <- paste(directory,"/00",id,".csv",sep = "")
                }
                else if(id >=10 && id <100 )
                {
                        file_name <- paste(directory,"/0",id,".csv",sep = "")
                }
                else
                {
                        file_name <- paste(directory,"/",id,".csv",sep = "")
                }
                
                data <- read.csv(file_name)
                
                pollutant_data <- c(pollutant_data,data[,pollutant])
        }
        
        mean_of_the_pollutant <- mean(pollutant_data,na.rm = TRUE)
        mean_of_the_pollutant
}