## make_learn.r 
## this script will stitch or 'knit' together all the individual .md files and push online to ohi-science.org.

## setup ----
source('~/github/ohimanual/make_functions.r') # rendering functions for OHI
# also required if you get the pdflatex error: www.tug.org/mactex

title_header    = 'The Ocean Health Index Conduct Phase'
subtitle_header = 'Assessment Manual'
title_short     = 'Manual'
wd = '~/github/ohimanual/3_conduct_manual'
setwd(wd)


## .md files to be included in this order: ---- 
in_md = c(
  # 'overall_guide.md',                              # incorporated into intro_assessment for website, but may format it as an intro page for pdf version
  'intro_assessment.md',                             # reviewed for 07/09 push
  'defining_spatial.md',                             # reviewed for 07/09 push. TODO: new figs
  'assemble_inputs.md',                              # reviewed for 07/09 push
  'intro_to_tbx.md',                                 # reviewed for 07/09 push. TODO: see notes
  'file_system.md',                                  # reviewed for 07/09 push
  'formatting_data.md',
  'data_transformation.md',                         # TODO: review and update JSL
  'install_tbx.md', 
  'accessing_github_repos.md',                       # TODO: review and update
  'github_architecture.md',
  'use_tbx.md',                                      # TODO: review and update JSL
  'use_tbx_to_modify_data_layers.md',
  'use_tbx_to_modify_pressures_resilience.md',    
  'use_tbx_to_modify_goal_models.md',      # updated by NJM 9/15
  'use_tbx_to_remove_goal_models.md',
  'use_tbx_to_modify_goals_categories.md',
  'example_modifications_with_tbx.md',
  'toolbox_troubleshooting.md',                      # TODO: review and update
  'intro_webapp.md',                                 # reviewed for 07/09 push. TODO: interpreting a flower plot
  'update_webapp.md',                                # reviewed for 07/09 push
  'intro_goalbygoal.md',                             # added on 07/15
  'practical_AO.md',                   # TODO: review and update
  'practical_BD.md',                   # TODO: review and update JSL ICO/LSP #476
  'practical_CP.md',                                # TODO: review and update
  'practical_CS.md',                             # TODO: review and update JSL #392, #367 #52 #488
  'practical_CW.md',                                # reviewed 11/23
  'practical_FP.md',                                # TODO: review and update
  'practical_LE.md',                                # TODO: review and update
  'practical_NP.md',
  'practical_TR.md',                                # TODO: review and update
  'practical_SP.md',
  'pressures_resilience.md',                      
  'file_prep_instructions.md',
  'model_descript_instructions.md',
  'record_sheet.md',
  'R_tutes_all.md',   
  'frequently_asked_questions.md')                   # TODO: review and update
out_md = 'ohi-manual.md'


## concatenate md ----
cat_md(in_md, out_md)               # use own md ordered file listing , output to ohi-manual.md
pfx = tools::file_path_sans_ext(out_md)

## render pdf ----
ohi_pdf(out_md)

## render html to local ohimanual repo ----
ohi_html_local(out_md)

## render html and push to ohi-science.org website ----
ohi_html(out_md, title_header, title_short)


## copy goal-by-goal files to ohi-science.github.io ----

## checkout and pull dev branch: ohi-science.github.io
system('cd ~/github/ohi-science.github.io; git checkout dev; git pull')

## identify and copy ten current goal files
goal_files = list.files(wd, '^practical_[A-Z][A-Z].md')
file.copy(file.path(wd, goal_files), '~/github/ohi-science.github.io/_includes/themes/OHI/goals')

## commit and push to dev branch: ohi-science.github.io
system('cd ~/github/ohi-science.github.io; git pull; git add -A; git commit -m "copied goal files .md"; git push')


