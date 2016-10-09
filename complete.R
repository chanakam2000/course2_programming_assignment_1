# Find complete cases of files

complete <- function(directory,id=1:332)
{
        complete_cases <- data.frame()
        
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
                nobs <- sum(complete.cases(data))
                complete_cases <- rbind(complete_cases,c(id,nobs))
        }
        
        names(complete_cases) <- c("id","nobs")
        complete_cases
}