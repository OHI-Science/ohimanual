## Toolbox Software

The Toolbox is open-source and can be downloaded and installed for free. It is comprised of several software systems: 

<!-- You are able to navigate through these files both at `www.github.com/OHI-Science` and on your own computer once you have cloned the repository to your computer. Your assessment repository is located at *github.com/OHI-Science* and we recommend saving it to your computer so that you can sync changes back online to save versions and facilitate collaboration. Conducting an OHI assessment using GitHub enables collaboration and transparency, and will provide access to the latest developments in the Toolbox software, allowing the OHI team to provide support remotely if necessary. 
This section explains the GitHub workflow and how to access and setup required software. You can use GitHub to upload any modifications you make so that you can work collaboratively with your team.  --> 
  
  **Required:**
  
  1. **GitHub**
  2. **git**
  3. **R**
  4. **RStudio**
  
  > ![](./fig/overview_requirements_1.png)
  
The Tailored Assessment Repository and `ohicore` are stored and managed with all the above software systems. Here is a quick introduction to the software and how they work together.

### GitHub and git

GitHub has an online interface and a desktop application for the version-control software called ** git**, where your project repository and any changes done to it are kept and recorded. It is an open-source development platform that enables easy collaboration and versioning, which means that all saved versions are archived and attributed to each user. It can be accessed remotely by all members of your team and enables team members to synchronize their work together. Because all versions are saved, you can return to previous work and also compare different points in history to track how changes you make affect the output scores.

To allow multiple users to work on the same repository at the same time, there are steps involved to 'check in' your modifications so they can merge with the work of others without problems. GitHub has specific words for each of these steps. 

**GitHub Vocabulary:**
  
* **clone** ~ download an online repository to your computer to your local machine with synching capabilities enabled
* **commit** ~ message associated with your changes at a point in time, before being able to sync back to the online repository
* **pull** ~ pull changes from an online repository to your computer
* **push** ~ push committed changes back to the online repository with your version, only possible after committing
* **sync** = pull + commit + push

> TIP: While you can edit files in the online GitHub repository, we do not recommend this. It is good practice to track changes through commits and syncing.

The example below illustrates GitHub's collaborative workflow:

![](https://docs.google.com/drawings/d/1_LegC8-1eH7Ed_0iIXcUhPCKPdKSw7vQIfuQGOXQHnA/pub?w=768&h=480)

There are also many great resources available online with more in-depth information:

* **Git and GitHub** by Hadley Wickham: [r-pkgs.had.co.nz/git.html](http://r-pkgs.had.co.nz/git.html)
* **Collaboration and Time Travel: Version Control with Git, GitHub and RStudio** video tutorial by Hadley Wickham: [www.rstudio.com/resources/webinars](http://www.rstudio.com/resources/webinars/)
* **Good Resources for Learning Git and GitHub** by GitHub: [help.github.com/articles/good-resources-for-learning-git-and-github/](https://help.github.com/articles/good-resources-for-learning-git-and-github/)


### R and RStudio

**R and RStudio allow you to work locally on your own computer**, modifying the files in the repository to reflect the desired modifications your team has identified for your assessment. All changes within your local repository will be tracked by GitHub regardless of the software you use to make the changes. This means that you can delete or paste files in the Mac Finder or Windows Explorer and edit *.csv* files in Excel or a text editor, and still sync these changes with the online repository. We recommend doing as much data manipulation as possible in a programming language like R, to maximize transparency and reproducibility.

* **R** is a free computing and graphical software where all the modifications to your OHI repository are done. 

* **RStudio** is a user-friendly R interface that can be used to synchronize any modifications you make to files in your assessment’s repository. It is where model modifications and calculations occur. 

Through RStudio, you can perform all the steps mentioned before (_clone, commit, push, and pull_) and _sync_ with the online Github repository. 

### Syncing Github and RStudio

RStudio can sync files with Github directly. It will capture the changes made to any files within the repository, no matter which software was used to modify them. In RStudio, you sync by first pulling and then pushing (separately). 

Launch your project in RStudio by double-clicking the `.Rproj` file in the assessment folder on your local hard drive.

![](https://docs.google.com/drawings/d/11F2lbB1S56ccZK5CbCxga4SEiRoE6E0-3QtZO99p37A/pub?w=500&h=400)

When you modify or add a file, the file will appear in the 'Git' window once it has been saved. In the example below, the file `test.R` was created.

<span style="font-size:0.9em">

1. Clicking the '_Staged_' (checked) box and the '_Commit_' button opens a new window where you can review changes.
2. Type a commit message that is informative to the changes you've made.
  - Note 1: there will often be multiple files 'staged' at the same time, and so the same commit message will be associated with all of the updated files. It is best to commit changes often with informative commit messages.
  - Note 2: clicking on a staged file will identify additions and deletions within that file for your review
3. Click '_Commit_' to commit the changes and the commit message.
4. "Pull" any changes that have been made to the online repository. This is important to ensure there are no conflicts with updating the online repository, espeically if you are working with collaborators who might be working on the same files as you are.
5. "Push" your committed changes to the online repository. Your changes are now visible online.
</span>

> TIP: If you aren't seeing your changes in the 'Git' window, try saving the file again.

![Figure showing RStudio when sycing. After first staging your changes, click the 'commit' button to open a new window where you can enter a 'commit message' and then pull and push new changes. ](https://docs.google.com/drawings/d/1M9-87q0RZ_lPD8QEL3DIpoPgyh-w2rKPoF-5IFWFJfo/pub?w=1027&h=500)

_Note_: Another option to syncing your edits on a repo with the online version is to use **Command Lines**, if you are familiar with it. There are resources available online on how to do so.    
