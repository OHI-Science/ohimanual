## make_learn.r 
## this script will stitch or 'knit' together all the individual .md files and push online to ohi-science.org.
# also required if you get the pdflatex error: www.tug.org/mactex


## setup ----
source('~/github/ohimanual/make_functions.r') # rendering functions for OHI

title_header    = 'The Ocean Health Index - Learn Phase'
subtitle_header = 'Conceptual Guide'
title_short     = 'Learn'
wd = '~/github/ohimanual/1_learn_concguide'
setwd(wd)


## .md files to be included in this order: ---- 
in_md = c(
  # 'Phase_1.md',   # currently this file is in 0_orientation; JSL not sure it fits here?

  # Note to Erich: These are a few files that were removed from the Manual (Phase 3)--we'll need to
  # make sure they are covered Guide (Phase 1):

  # '~/github/ohimanual/README.md',
  # '~/github/ohimanual/3_conduct_manual/what_is_OHI+.md',
  # '~/github/ohimanual/3_conduct_manual/conduct_assessment.md',
  # '~/github/ohimanual/3_conduct_manual/before_conduct_assessment.md',

  'Intro_framework.md',
  'Understand_Scales_of_Assessement.md',
  'Determine_the_Need_and_Purpose.md',
  #'Why_ten_goals.md',
  'How_Is_The_Index_Calculated.md',
  'How_Are_Goals_Weighted.md',
  'Reference_Points.md',
  'Understanding_Pressures.md',
  'Understanding_Resilience.md',
  'Pres_Resi_interactions.md',
  'Understanding_Trend.md',
  'Understanding_Status.md',
  # 'WebApp_intro.md',
  'FP_Philosophy.md',
  'AO_Philosophy.md',
  'NP_Philosophy.md',
  'CS_Philosophy.md',
  'CP_Philosophy.md',
  'LE_Philosophy.md',
  'TR_Philosophy.md',
  'SP_Philosophy.md',
  'CW_Philosophy.md',
  'BD_Philosophy.md')
  # summarzing ending             # add some kind of summary

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

