# Installing a Git Repo from the Terminal and Usage of Git
## Making a new Git Repo that has Edits
  1. go to folder directory where all the files are located
  2. open GitBash or any other terminal and start the following commands:
```
git init
git add .
git commit -m "First Commit"
git remote add origin <URL>
git remote -v
git status
git push origin master
```
  3. If you get an error above it means the master and fork roots are on different levels.
So, do the folliwng:	
```
git pull
git branch --set-upstream-to=origin/master master
git pull --allow-unrelated-histories
git status
git push origin master
```

## Adding a Commit to an Existing Repo
If you want to add a commit, do the following:
```
git add .
git status
git commit -m "This Commit Name"
git push origin master
```

## Adding a New Local Instance of the Existing Repo
If you want to add a new local instance of the existing repo (like on a new Raspberry Pi):
```
git init
git remote add origin <URL>
# check that everything's kosher
git remote -v
git status
# Pull from the repo
git pull origin master
```
### If the Existing Repo has Submodules...
You will need to check out the submodules by also typing:
```
git submodule update --init
```


## Creating a New Branch
* To create a new branch of the code: (TODO)

## Remember Username and Password
Tired of authenticating every time you use Git? Try the following:
```
# Set git to use the credential memory cache globally for 15 minutes
git config --global credential.helper cache

# Set the cache to timeout after 1 hour (setting is in seconds)
git config --global credential.helper 'cache --timeout=3600'
```
Please Note:
* The `commit` command requests your email and username every time, this is for storing into the commit
* When you push or pull onto Github, this is where it stores your credentials. 


## See More
To get an understandable tutorial, type into the terminal:
`git help tutorial`








