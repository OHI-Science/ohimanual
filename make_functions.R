# make_functions.r 
# These functions functions to be used to stitch together all the .md files for the Phases of OHI Assessments. 

## load libraries ----
library(knitr) # install.packages("knitr")
library(rmarkdown)
library(stringr)

# concatenate md files together ----
cat_md = function(
  files_md = setdiff(list.files(getwd(), glob2rx('*.md')), out_md),
  out_md  = '_all_.md'){
  
  if (file.exists(out_md)) unlink(out_md)
  
  cat('---\n', 'title: ', title_header, '\n---\n\n', sep='', file=out_md, append=T)
  
  for (md in files_md){
    cat(paste(c(readLines(md),'',''), collapse='\n'), file=out_md, append=T)
  }
}

# render pdf for OHI----
ohi_pdf = function(out_md) {
  cat('creating .pdf file...\n')
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
}

# render docx ----
ohi_docx = function(out_md) {
  cat('creating .doc file...\n')
  render(
    out_md,
    word_document(
      fig_caption = T, fig_width = 7, fig_height = 5,
      highlight='default', reference_docx='default'),
    clean=T, quiet=F,
    output_file = paste0(pfx, '.docx'))
}

# render html for OHI in local ohimanual repo---- 
ohi_html_local = function(out_md) {
  cat('creating local .html file...\n')
  render(
    out_md,
    html_document(
      number_sections=T, fig_width = 3, fig_height = 2, fig_retina = 2, fig_caption = T, smart=T,
      self_contained=F, theme='default',
      highlight='default', mathjax='default', template='default',
      toc=T, toc_depth=3),
    clean=T, quiet=F,
    output_file = paste0(pfx, '.html'))
}


# render html for OHI and push to ohi-science.org
ohi_html = function(out_md, title_header, title_short) { 
  cat('creating ohi-science.org .html file...\n')
  
  ## checkout and pull dev branch: ohi-science.github.io
 system('cd ~/github/ohi-science.github.io; git checkout dev; git pull')
  
  ## render html
  render(
    out_md,
    html_document(
      number_sections=T, fig_width = 3, fig_height = 2, fig_retina = 2, fig_caption = T, smart=T,
      self_contained=F, theme=NULL,
      highlight=NULL, mathjax='default',
      toc=T, toc_depth=3),
    clean=T, quiet=F,
    output_file = paste0(pfx, '-external.html'))
  
  ## prepend required header
  cat(sprintf('---
layout: manual
title: %s
subtitle: %s
tagline: %s
---
{%s include JB/setup %s}
', 
              title_header,
              subtitle_header,
              format(Sys.time(), "%d %B %Y"), '%', '%'), 
      file=sprintf('~/github/ohi-science.github.io/%s/index.html', tolower(title_short)))
  
  ## save
  cat(
    readLines(paste0(pfx, '-external.html')),
    file=sprintf('~/github/ohi-science.github.io/%s/index.html', tolower(title_short)), append=T)
  if (title_short == 'Manual') {
    dir.create(sprintf('~/github/ohi-science.github.io/%s/fig', tolower(title_short)), showWarnings=F)
    file.copy('fig', sprintf('~/github/ohi-science.github.io/%s', tolower(title_short)), overwrite=T, recursive=T)
  }
  
  ## commit and push to dev branch: ohi-science.github.io
  system(sprintf(
    'cd ~/github/ohi-science.github.io; 
    git checkout dev; 
    git pull; 
    git add %s -A; 
    git commit -m "updates pushed from ohimanual/make_%s.r"; 
    git push', 
    tolower(title_short), tolower(title_short)))
  
  message(sprintf('\nohi-science.org/%s was updated\n', tolower(title_short)))

}
