# TODO:
# - use bibliography
# use title. problem now is that input md docs already using header 1

# load libraries ----
library(knitr)
library(rmarkdown)
library(stringr)
# Also required if you get the pdflatex error: www.tug.org/mactex

redo_website = T # T if push to ohi-science.org/manual; F if do not push. Displays T/F after rendering all


# move copy of README.md
# stopifnot(file.copy('~/github/ohimanual/3_conduct_manual/README.md',
#                     '~/github/ohimanual/README.md', overwrite=T))

# set variables ----
title_header = 'The Ocean Health Index Conduct Phase - Assessment Manual'
title_short  = 'Manual'
wd = '~/github/ohimanual/3_conduct_manual'

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
  'use_tbx_calculate_overall_index.md',
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

# cleanup functions within files and for filenames ----
## within a file, rename some .md files
# for (f in list.files(getwd(), glob2rx('*.md'))){ # f = list.files(getwd(), glob2rx('*.md'))[1]
#   s = readLines(f, warn=F, encoding='UTF-8')
#   s = str_replace_all(s, fixed('regional_assessment_intro.md'), fixed('intro_regional_assessment.md'))
#   writeLines(s, f)
# }
# rename filenames
# setwd(wd)
# for (f in list.files(getwd(), glob2rx('*.md'))){ #f = list.files(getwd(), glob2rx('*.md'))[1]
#   file.rename(f, str_replace(f, '3_',''))
# }


# helper functions ----
cat_md = function(
  files_md = setdiff(list.files(getwd(), glob2rx('*.md')), out_md),
  out_md  = '_all_.md'){

  if (file.exists(out_md)) unlink(out_md)

  cat('---\n', 'title: ', title_header, '\n---\n\n', sep='', file=out_md, append=T)

  for (md in files_md){
    cat(paste(c(readLines(md),'',''), collapse='\n'), file=out_md, append=T)
  }
}

# concatenate md ----
setwd(wd)
#cat_md()                           # use default file listing of *.md, default output _all_.md
#cat_md(md_order)                   # use own md ordered file listing , default output _all_.md
cat_md(in_md, out_md)               # use own md ordered file listing , output to ohi-manual.md
pfx = tools::file_path_sans_ext(out_md)

# render html ----
render(
  out_md,
  html_document(
    number_sections=T, fig_width = 3, fig_height = 2, fig_retina = 2, fig_caption = T, smart=T,
    self_contained=F, theme='default',
    highlight='default', mathjax='default', template='default',
    toc=T, toc_depth=3),
  clean=T, quiet=F,
  output_file = paste0(pfx, '.html'))

# If pushing to the OHI Science website, render an HTML file a little differently
if (redo_website) { 
  render(
    out_md,
    html_document(
      number_sections=T, fig_width = 3, fig_height = 2, fig_retina = 2, fig_caption = T, smart=T,
      self_contained=F, theme=NULL,
      highlight=NULL, mathjax='default',
      toc=T, toc_depth=3),
    clean=T, quiet=F,
    output_file = paste0(pfx, '-external.html'))
  
cat(sprintf('---
layout: manual
title : Manual
tagline: %s
header : The Ocean Health Index Conduct Phase: Assessment Manual
---
{%s include JB/setup %s}
', format(Sys.time(), "%d %B %Y"), '%', '%'), file='~/github/ohi-science.github.io/manual/index.html')
cat(
  readLines(paste0(pfx, '-external.html')),
  file='~/github/ohi-science.github.io/manual/index.html',
  append=T)
# #file.copy(paste0(pfx, '-external.html'), '~/github/ohi-science.github.io/manual/index.html', overwrite=T)
  dir.create('~/github/ohi-science.github.io/manual/fig', showWarnings=F)
  file.copy('fig', '~/github/ohi-science.github.io/manual', overwrite=T, recursive=T)
  system('cd ~/github/ohi-science.github.io; git pull; git add manual -A; git commit -m "update manual"; git push')
}

# render docx ----
render(
  out_md,
  word_document(
    fig_caption = T, fig_width = 7, fig_height = 5,
    highlight='default', reference_docx='default'),
  clean=T, quiet=F,
  output_file = paste0(pfx, '.docx'))

# render pdf ----
render(
  out_md,
  pdf_document(
    toc = T, toc_depth = 3, number_sections = T,
    fig_width = 6.5, fig_height = 4.5, fig_crop = TRUE,
    fig_caption = T, highlight = "default", template = "default",
    keep_tex = F, latex_engine = "pdflatex",
    includes = NULL, pandoc_args = NULL),
  clean=T, quiet=F,
  output_file = paste0(pfx, '.pdf'))


# message regarding redo_website ----

cat(sprintf('ohi-science.org/manual was updated: %s', redo_website))
if(redo_website ==F) cat("to update ohi-science.org/manual, change the 'redo_website' variable from FALSE to TRUE")
