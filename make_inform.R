## make_inform.r 
## this script will stitch or 'knit' together all the individual .md files and push online to ohi-science.org.

## setup ----
source('~/github/ohimanual/make_functions.r') # rendering functions for OHI
# also required if you get the pdflatex error: www.tug.org/mactex

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

out_md = 'ohi-inform.md'


## concatenate md ----
cat_md(in_md, out_md)
pfx = tools::file_path_sans_ext(out_md)

## render and save html; push to ohi-science.org website ---- 
ohi_html(out_md)
push_to_web(out_md)

## render pdf ----
ohi_pdf(out_md)

## copy pdf to downloads on ohi-science.org ----

copy_archive(dir_fn   = '4_inform/ohi-inform',
             path_in  = '~/github/ohimanual',
             path_out =  '~/github/ohi-science.github.io/assets/downloads/other')

