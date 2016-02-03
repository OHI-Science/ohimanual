## make_plan.r 
## this script will stitch or 'knit' together all the individual .md files and push online to ohi-science.org.

## setup ----
source('~/github/ohimanual/make_functions.r') # rendering functions for OHI
# also required if you get the pdflatex error: www.tug.org/mactex

title_header    = 'The Ocean Health Index Plan Phase'
subtitle_header = ''
title_short     = 'Plan'
wd = '~/github/ohimanual/2_plan'
setwd(wd)


## .md files to be included in this order: ---- 
in_md = c(
  'Understand_Requirements_for_Assessment.md',
  'Team_Structure.md', 
  'Data_Requirements.md',
  'Funding.md',
  'Planning_and_Partnering.md',
  'Introducing_Concept_to_Stakeholders.md',
  'Strategy.md',
  'Strategy_Components.md',
  'Adaptive_Management.md')
  # summarizing ending             # add some kind of summary

out_md = 'ohi-plan.md' # <- this is the output "final" file.


## concatenate md ----
cat_md(in_md, out_md)
pfx = tools::file_path_sans_ext(out_md)

## render and save html; push to ohi-science.org website ---- 
ohi_html(out_md)
push_to_web(out_md)

## render pdf ----
ohi_pdf(out_md)

## copy pdf to downloads on ohi-science.org ----
source('make_functions.R')

copy_archive(dir_fn   = '2_plan/ohi-plan',
             path_in  = '~/github/ohimanual',
             path_out =  '~/github/ohi-science.github.io/assets/downloads/other')
