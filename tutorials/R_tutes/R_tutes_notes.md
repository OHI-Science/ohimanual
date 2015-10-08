### Coding style 

> Code unto others as you would have them code unto you.

Why style? ask Hadley Wickham, developer of many wonderful R packages:

> Good style is important because while your code only has one
author, it’ll usually have multiple readers. This is especially true when you’re
writing code with others. In that case, it’s a good idea to agree on a common
style up-front. Since no style is strictly better than another, working with
others may mean that you’ll need to sacrifice some preferred aspects of your style.

The Ocean Health Index is founded upon principles of open-source science, so our code should be not just available, but legible to others.  For OHI+, we expect people to modify code to implement new goal models, and we may need to provide support in developing and debugging their code.

Certain coding techniques are more efficient than others (e.g. in R, looping across elements in a vector is much slower than operating on the entire vector at once), but rarely does OHI code push any performance envelopes.  Much more of our time is spent writing code, translating old code into new models, and debugging.  Transparent, readable code will save more time in the future than a perfectly-optimized but opaque algorithm.  

Readable code is:

* collaborative
* easier for others to understand and debug
* easier for others to update and modify
* easier for 'future you' to interpret what 'past you' meant when you wrote that chunk of code.

Check out Hadley Wickham's [style guide: ](http://r-pkgs.had.co.nz/style.html)

* How many of these suggestions are second-nature to you? how many are you guilty of breaking?
* Note that these are guidelines, not rules; non-stylish code can still work.  

#### Best practices for coding in OHI assessments:

* use a consistent format for variable names, filenames, function names, etc.
    * `lower_case_with_underscores` (preferred) or `camelCase` (ok I suppose)
        * not `periods.in.between`
    * use names that are brief but intuitive
* Comment clearly for your own purposes, and for others.
    * Comment on the purpose of each important block of code.
    * Comment on the reasoning behind any unusual lines of code, for example an odd function call that gets around a problem.
* Take advantage of R Studio section labels functionality:
    * If a comment line ends with four or more -, =, or # signs, R Studio recognizes it as a new section.
    * Text within the comment becomes the section name, accessible in the drop-down menu in the bottom left of the RStudio script window.
* use <- to assign values to variables (not necessary, but preferred)
* use %>% to create intuitive chains of related functions
    * one function per line
    * break long function calls into separate lines (e.g. multiple mutated variables)
* use proper spacing and formatting for legibility
    * don't crowd the code - use spaces between math operators and after commas
    * use indents to indicate nested or sequential/chained code
    * break sequences or long function calls into separate lines logically -
    e.g. one function call per line
* use functions to add intuitive names to chunks of code
* Use 'tidy data' practices - take advantage of `tidyr`, `dplyr`
    * clean up unused columns using `select(-colname)`
* if you are working on an older script, spend a few extra minutes to update it according to these best practices
    * technical debt - you can do it quickly or you can do it right.  Time saved now may cost you or someone else more time later.

#### Writing functions
http://nicercode.github.io/guides/functions/
Why write functions?
* name a chunk of code for easier reading
* easily reuse a chunk of code

What makes a good function:
* It’s short
* Performs a single operation
* Uses intuitive names

<<<<<<< HEAD:R_tutes/R_tutes_notes.md

##Misc helpful or common or confusing functions
* switch vs list?
* ifelse?
* apply functions?

## Omar and Ning's Ques 
* line 69 R_tubes_tidyr.R, why not save year as.numeric (vs. as.integer)? any functional differences?
* added a line 31: data_wide = data, which wasn't defined before
* line 86: doesn't arrange by alphabetical order? 
=======
#### Directories and files
    * Store files in a folder called 'github' in your home directory; access it with `~/github` so that users with different operating systems can work smoothly with your files
>>>>>>> 742e9f83d0b12a5b52722a9b105c35987129ff0a:tutorials/R_tutes/R_tutes_notes.md
