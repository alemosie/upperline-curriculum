# Practice Git & GitHub skills!

Visit the main repository [here](https://github.com/alemosie/github-practice)!

*Content courtesy of Flatiron School's Learn.co and Upperline School of Code*

![alt text](https://pando-assets.s3.amazonaws.com/uploads/2013/07/screen-shot-2013-07-08-at-4-17-49-pm.png "OctoCat, the GitHub mascot")


## Intro to Git & GitHub

Git and GitHub are essential tools for saving and sharing your code. When a group of people get together to write a program, they all have to work on the same files. But what's the best way to deal with the confusion that might arise when multiple people are changing code in the same file? That's where Git and GitHub come in.

Whenever you get your program working properly, it's important to save that version of the program, right? The cool thing about Git and GitHub is that these tools remember exactly what your code looked like at each moment you choose to save it. It's kind of like Git takes a snapshot of your code whenever you want it to. Imagine you are coding along, and suddenly EVERYTHING is broken. What would you do? If you used Git and saved your work along the way, you could essentially rewind your code history back to a working version.

### What is GitHub, anyway?

As tech savvy programmers, you're probably familiar with Google Docs. Google Docs is a great way to store documents online and collaborate with other people on a project. It's useful for text documents, Excel spreadsheets, and Powerpoint presentations, but unfortunately for us, they don’t have a great way to store code. **GitHub is the Google Docs of code.** There is a ton you can do with GitHub, but in this lesson we're just going to go over the basics.

### Definitions

#### Repository (repo)

A repository (also called a "repo") is like a project's folder that holds all the code. A repository contains all of the project files -- including documentation! -- and stores each file's revision history.

#### Fork

One of the basic GitHub actions that you'll take as you work on projects with other people is "forking a repository." Forking is basically like photocopying a worksheet so that you have your own copy to work on (and so that the original copy stays intact). It's copying work from another person’s GitHub account and putting it in your GitHub account.

#### Clone
When you navigate to a GitHub repository, you're looking at code that is stored on GitHub.com. You can't actually edit any of the text yet. To be able to make changes, you need to have your own copy locally, or on your computer. To do that, you need to "clone the repository," which means grab the code from GitHub.com and put a copy of it on your computer.


## Interacting with Git & GitHub

![alt text](https://imgs.xkcd.com/comics/git.png "We're all in this boat together" )

For us laypeople, Git is just a series of commands that we have to memorize, and hope that nothing bad happens when we use them. (Thanks, [XKCD](https://xkcd.com/1597/))

### Copy an existing repository to your company

1. Go to a repository page on github.com. This one is here for practice!

2. Click on the fork button on the top right of the screen. A window should pop up asking where you would like to fork this repository. Be sure to select your own Github account! ***Sanity check**: At this point, GitHub should refresh, and you should be on a page that has your GitHub username in the URL!*

3. Find the big, green "clone or download" dropdown on the right side of the page. Click it! If you see "HTTPS" in big bold letters, then you're set; otherwise, click the "Use HTTPS" link in the top right corner. Copy the link you see. Here's an example of what that looks like:

![alt text](https://help.github.com/assets/images/help/repository/remotes-url.png "Clone a repo")

4. *In your terminal*, navigate to the folder where you want the GitHub code stored and type `git clone [copied_text]` This command (`git clone`) will copy the repository from GitHub and save it on your computer. ***Sanity check**: your terminal should prompt you to enter your GitHub username and password. When you type the password, you won't see the letters appear. Don't worry about that. It's just a security thing, so keep typing your password in even though you don't see the cursor moving. Hit enter after you enter both your username and password.*

5. Once it finishes cloning, enter `ls`. You should see a directory with the same name as the repository. `cd` into the folder you downloaded on your computer

### Push work to GitHub

1. Check the status of your project with `git status`. If there are any differences between what you have locally and what's on GitHub, `git status` will tell you. Otherwise, you'll see something like `nothing to commit, working directory clean`!

2. Use `git add` with the filename you want to to add to your 'holding station'

3. When you're ready to commit, `git commit -m "add a message about the changes you've made"`. Make sure that you describe what you've done -- it'll make it a *lot* easier to piece together your progress in the future!

4. When you're ready to push to your repository on github.com: `git push origin [branch name]`.
  - Note: if it's the first time you do this, add the flag `-u` after git push, like so: `git push -u origin [branch name]`. This sets the default `push` location to origin, so that you can just `git push` afterwards!

You're officially a forking, cloning, GitHub ninja!


## Resources

- Check out this [awesome(ly amusing)](http://bloggytoons.com/posts/2013/10/10/git-kitchen-wchef-ramsay) guide to version control and git!
