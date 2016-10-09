
corr <- function(directory, threshold = 0)
{
        output <- numeric(0)
        
        for (file_name in dir(directory))
        {
                data <- read.csv(paste(directory,"/",file_name,sep = "",collapse = ""))
                no_complete <- sum(complete.cases(data))
                
                if (no_complete > threshold)
                {
                        data_complete <- data[complete.cases(data),]
                        correlation <- cor(data_complete$sulfate,data_complete$nitrate)
                        output <- c(output,correlation)                
                }
        }
        
        output
}

