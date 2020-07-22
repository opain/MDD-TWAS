#!/bin/bash

#$ -cwd


module add utilities/use.dev
module add apps/rstudio/3.6.2-singularity

Rscript -e "rmarkdown::render_site()"
git add .
git add -u
git status
git commit -m 'Update'
git push origin dev
