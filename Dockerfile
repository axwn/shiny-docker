FROM rocker/shiny-verse:3.6.1
RUN install2.r --error --deps TRUE \
        DBI \
        DT \
        RPostgres \
        fuzzyjoin \
        glue \
        lubridate \
        tictoc
RUN apt-get update \
        && apt-get install -y --no-install-recommends libudunits2-dev libgdal-dev libgeos-dev libproj-dev libjq-dev libprotobuf-dev protobuf-compiler libv8-3.14-dev
RUN install2.r --error --deps TRUE sf
RUN R -e "devtools::install_github('ropensci/gtfsr')"
