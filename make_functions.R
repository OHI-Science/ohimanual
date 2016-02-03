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
ohi_html = function(out_md) {
  cat('creating local .html file...\n')
  render(
    out_md,
    html_document(
      number_sections=T, fig_width = 3, fig_height = 2, fig_retina = 2, fig_caption = T, smart=T,
      self_contained=F, theme=NULL,
      highlight=NULL, mathjax='default',
      toc=T, toc_depth=3),
    clean=T, quiet=F,
    output_file = paste0(pfx, '.html'))
}


  ## commit and push to master branch: ohi-science.github.io
push_to_web = function(out_md) {
  
  # read filename
  fn = str_split(out_md, "\\.");
  f  = fn[[1]][1]
  
  # copy .html file to ohi-science.github.io
  file.copy(sprintf('%s.html', f), sprintf('~/github/ohi-science.github.io/%s', tolower(title_short)), overwrite=T, recursive=T)
  
  if (f == 'ohi-manual') {
    dir.create('~/github/ohi-science.github.io/_includes/themes/OHI/manual', showWarnings=F)
    file.copy('fig', '~/github/ohi-science.github.io/_includes/themes/OHI/manual', overwrite=T, recursive=T)
  }
  
  # git push ohi-science.github.io
  system(sprintf(
      'cd ~/github/ohi-science.github.io; 
    git checkout master; 
    git pull; 
    git add %s.html -A; 
    git commit -m "%s.html pushed from ohimanual/make_*.r"; 
    git push', 
    f, f))
  
  message(sprintf('\nohi-science.org/%s was updated\n', f))
  
}

# little copy_archive to copy pdf files
copy_archive = function(dir_fn,
                        path_in  = '~/github/ohimanual',
                        path_out = '~/github/ohi-science.github.io/assets/downloads/other') { 
  
  fn = str_split(dir_fn, '/')[[1]][2]
    file.copy(sprintf('%s/%s%s', path_in,  dir_fn, '.pdf'),
              sprintf('%s/%s%s', path_out, fn,     '.pdf'))
}
