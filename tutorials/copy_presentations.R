## copy_presentations.r
## this script copies/moves presentations from ohimanual to ohi-science.github.io for display on the website.
## dir_fn = relative path from working directory

setwd('~/github/ohimanual')
library(stringr)

# little copy_fxn to copy 
copy_fxn = function(dir_fn,
                    extensions = c('.html', '.pdf'),
                    path_in  = '~/github/ohimanual/tutorials',
                    path_out =  '~/github/ohi-science.github.io/assets/downloads/pres') {
  
  fn = str_split(dir_fn, '/')[[1]][3]
  for (ext in extensions) {
    file.copy(sprintf('%s/%s%s', path_in,  dir_fn, ext),
              sprintf('%s/%s%s', path_out, fn,     ext))
  }
}

#### conduct_phase_intro ----

copy_fxn('tutorials/conduct_phase_intro/conduct_phase_intro')


#### tbx_intro ----
copy_fxn('tutorials/tbx_intro/tutorial_tbx_intro')
copy_fxn('tutorials/tbx_intro/tutorial_tbx_intro_SPANISH')

#### tbx_modifications ----
copy_fxn('tutorials/tbx_modifications/tutorial_tbx_modifications')
copy_fxn('tutorials/tbx_modifications/tutorial_tbx_modifications_SPANISH')

#### github_intro ----
copy_fxn('github_intro/tutorial_github_intro')
copy_fxn('github_intro/tutorial_github_intro_SPANISH')

#### ohi_2012_2015
copy_fxn('tutorials/ohi_2012_2015/presentation_nceas')
file.rename('~/github/ohi-science.github.io/assets/downloads/pres/presentation_nceas.pdf',
            '~/github/ohi-science.github.io/assets/downloads/pres/OHI_Overview_2012_2015.pdf')
file.rename('~/github/ohi-science.github.io/assets/downloads/pres/presentation_nceas.html',
            '~/github/ohi-science.github.io/assets/downloads/pres/OHI_Overview_2012_2015.html')



