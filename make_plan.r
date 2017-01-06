## make_plan.r
## this script will stitch or 'knit' together all the individual .md files and push online to ohi-science.org.
## also required if you get the pdflatex error: www.tug.org/mactex


## setup ----
source('~/github/ohimanual/make_functions.r') # rendering functions for OHI

title_header    = 'The Ocean Health Index Plan Phase'
subtitle_header = ''
title_short     = 'Plan'
wd = '~/github/ohimanual/2_plan'
setwd(wd)


## .md files to be included in this order: ----
in_md = c(
  'Understand_Requirements_for_Assessment.md',
  'Stakeholder_engagement.md',
  'Identify_convener.md',
  'Stakeholder_needs_analysis.md',
  'Team_Structure.md',
  'Collaborative_target_setting.md',
  'Workshop.md',
  'Strategy.md',
  'Strategy_Components.md',
  'Funding.md',
  'Communicating_with_Stakeholders.md',
  'Adaptive_Management.md')
  # summarizing ending             # add some kind of summary

## final .md filename
out_md = 'ohi-plan.md'


## concatenate md ----
cat_md(in_md, out_md)
pfx = tools::file_path_sans_ext(out_md)

## render and save html, pdf ----
ohi_html(out_md)
# ohi_pdf(out_md)

## push to ohi-science.org website ----
push_to_web(out_md)
