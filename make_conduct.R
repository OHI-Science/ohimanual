## make_learn.r 
## this script will stitch or 'knit' together all the individual .md files and push online to ohi-science.org.
## also required if you get the pdflatex error: www.tug.org/mactex


## setup ----
source('~/github/ohimanual/make_functions.r') # rendering functions for OHI

title_header    = 'The Ocean Health Index Conduct Phase'
subtitle_header = 'Assessment Manual'
wd = '~/github/ohimanual/3_conduct_manual'
setwd(wd)


## .md files to be included in this order: ---- 
in_md = c(
  # 'overall_guide.md',                              
  'intro_assessment.md',        
  'intro_to_repos.md',
  'defining_spatial.md',                            
  'assemble_inputs.md',                              
  'formatting_data.md',
  'intro_goalbygoal.md',                             
  'file_system.md',
  'use_tbx.md',                                      # TODO: review and update 
  'use_tbx_to_modify_data_layers.md',
  'use_tbx_to_modify_goal_models.md',                # updated by NJM 9/15
  'use_tbx_to_modify_pressures_resilience.md',    
  # 'use_tbx_to_modify_goals_categories.md',
  'use_tbx_to_remove_goal_models.md',
  'use_tbx_to_remove_sub_goals.md',
  'use_tbx_calculate_overall_index.md',
  'toolbox_troubleshooting.md',                     
  'tbx_software_intro.md',
  'install_tbx.md',
  'practical_FP.md',
  'practical_AO.md',                
  'practical_NP.md',
  'practical_CS.md',  
  'practical_CP.md',                              
  'practical_SP.md',
  'practical_LE.md',                              
  'practical_TR.md',                              
  'practical_CW.md',                            
  'practical_BD.md',                                 
  # 'pressures_resilience.md',                      
  'file_prep_instructions.md',
  'model_descript_instructions.md',
  'record_sheet.md',
  'R_tutes_all.md',   
  'frequently_asked_questions.md')                  
 
## final .md filename
out_md = 'ohi-manual.md' 


## concatenate md ----
cat_md(in_md, out_md)               
pfx = tools::file_path_sans_ext(out_md)

## render and save html, pdf ----
ohi_html(out_md)
#ohi_pdf(out_md)

## push to ohi-science.org website ---- 
push_to_web(out_md)

## copy goal-by-goal files to ohi-science.github.io ----

## checkout and pull master branch: ohi-science.github.io
system('cd ~/github/ohi-science.github.io; git checkout master; git pull')

## identify and copy ten current goal files
goal_files = list.files(wd, '^practical_[A-Z][A-Z].md')
file.copy(file.path(wd, goal_files), '~/github/ohi-science.github.io/_includes/themes/OHI/goals', overwrite = T)


