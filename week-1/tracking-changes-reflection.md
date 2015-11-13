###How does tracking and adding changes make developers' lives easier?
It allows developers to know what modifications have been made to a program, and what they do.  It also allows them to go back to previous saved versions if things get buggy.

###What is a commit?
A commit is a save point for your project representing any additions/subtractions you’ve made and with a message explaining the nature of the changes

###What are the best practices for commit messages?
As best I understand from Tom Pope’s blog (http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
 the best practices are: Capitalize the the first letter, and using imperative tense give a short description (about 50 characters or less) of what the change does. This is the head and can be all that you need to do if you are using commit -m. If using commit -v use the a line between the head and the body. Use the body to further explain the reasons behind the change, and contrast the expected new behavior with previous behavior. Keep lines less than or equal to 72 characters to keep it readable on the screen, and use spaces between paragraphs.

###What does the HEAD^ argument mean?
The HEAD^ argument means the commit before the last commit, and is used to reset the repo to before the last commit by using the git reset —soft HEAD^ command.

###What are the 3 stages of a git change and how do you move a file from one stage to the other?
Working, staged and commit.  The working stage is where you work and develop your project.  When you’ve got a change that you feel good about adding then you use the git add command to add your changes. Then it has moved to the staged stage, if you use the git status command you can track it, and you can use the git reset HEAD command to return it to the working stage.  If you are sure you want to add it then you go to the commit stage using the git commit command using -m to add a brief commit message, or -v to add a larger explanation of what you’ve done.  Then poof… your change is in the commit stage ready for pull requests and being merged.  If you want to change the commit message you can use the git commit —amend message (I had quite a bit of trouble deciding what to say), or if you want to undo the commit you can use the git reset —soft HEAD^ command to undo it.

###Write a handy cheatsheet of the commands you need to commit your changes?
####short list
-git status - check the status of your commit
-git add - add things to staged stage
-git commit -m “message_here” -commit things that were staged

####optional list
-git reset HEAD - unstage things
-git commit —amend - fix commit message that I garbled
-git reset —soft HEAD^ - uncommit things that you just committed
-and I’m certain a ton more I just haven’t learned yet

###What is a pull request and how do you create and merge one?
A pull request is a request for review before a change is made to a master repo.
To create one first you use the git push origin branch-name command to push the changes you’ve committed to the remote repo. Then you get on to GitHub and click on the Compare and pull request button.  On the next screen after checking things out press the Pull request button. And you are done with making a pull request.
Now for the merging.  Open the pull request, review the changes that will be made if you merge the request, and if you agree press the Merge the pull request button. And now the merge is done.

###Why are pull requests preferred when working with teams?
Pull requests allow people to review changes to collaborative works before they are added to the master repo.  They also help keep things from getting glitchy, and probably help prevent controversial changes as well.  So the function as a kind of checks and balances system on the whole collaborative process.