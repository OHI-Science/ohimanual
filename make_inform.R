## make_inform.r 
## this script will stitch or 'knit' together all the individual .md files and push online to ohi-science.org.
## also required if you get the pdflatex error: www.tug.org/mactex


## setup ----
source('~/github/ohimanual/make_functions.r') # rendering functions for OHI

title_header    = 'The Ocean Health Index Inform Phase'
subtitle_header = ''
title_short     = 'Inform'
wd = '~/github/ohimanual/4_inform'
setwd(wd)


## .md files to be included in this order: ---- 
in_md = c(
  'Outreach_and_Communications.md',
  'Disseminating_Findings.md',
  'Communicate_Results_with_Partners.md',
  'Develop_Strategies.md',
  'Monitor_and_Re-evaluate_to_Determine_Policy_Effectiveness_and_Set_New_Priorities.md')
  # summarzing ending             #TODO: add some kind of summary

## final .md filename
out_md = 'ohi-concguide.md' 


## concatenate md ----
cat_md(in_md, out_md)               
pfx = tools::file_path_sans_ext(out_md)

## render and save html, pdf ----
ohi_html(out_md)
ohi_pdf(out_md)

## push to ohi-science.org website ---- 
push_to_web(out_md)
