FROM rocker/tidyverse

# install R packages
RUN Rscript -e "install.packages('here')"
RUN Rscript -e "install.packages('rmarkdown')"
RUN Rscript -e "install.packages('ggplot2')"



# make a project directory
RUN mkdir /project

# copy contents of local folder to project folder in container
COPY ./ /project/

# make R scripts executable
# RUN chmod +x /project/Rmd/*.R

# set an environment variable
ENV foo="bar"

WORKDIR /project

# make container entry point bash
CMD make