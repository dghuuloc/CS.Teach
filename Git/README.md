# <p align="center">Git Contents Should Know</p>
---
## Git configuration file locations
### How to configure Git username and email address
```
git config --global user.email "you@example.com"
```
```
git config --global user.name "cameronmcnz"
```
#### Here is the git config command with list run on Windows:
#### Git System
Git Config controls settings for all users and all repositories
```
git config --system --list
```
#### Git Global
Git Config controls settings for the currently logged in user
```
git config --global --list
```
#### Git Local (--local can only be used inside a git repository)
Git Config controls settings for a specific repository
```
git config --local --list
```
#### and show-origin swtiches
```
git config --list --show-origin
```
### Where are Windows Git config files located?
|__Scope__|__Location and Filenam__|__Filename Only__|
|:--------|:----------------|:-----|
|System   | C:\Program Files\Git\etc\gitconfig | gitconfig|
|Global   | C:\Users\username\.gitconfig | .gitconfig|
|Local    | <git-repo>\.git\config | config|
|Worktree | <git-repo>\.git\config.worktree | config.worktree|
|Portable | C:\ProgramData\Git\config | config|

### Where are Git config files on Ubuntu Linux located?
|__Scope__|__Location and Filenam__|__Filename Only__|
|:--------|:----------------|:-----------------------|
|System   | ~etc/gitconfig | gitconfig |
|Global   | ~home/<username>/.gitconfig or ~root/.gitconfig | .gitconfig |
|Local    | <git-repo>/.git/config | config|
|Worktree | <git-repo>/.git/config.worktree | config.worktree |

---
## Branches
#### Show all branches
```
git branch
```
> [!NOTE]
> git branch with no arguments displays the Current branch marked with an asterisk (*) in front of it:
#### How to Display the Current Branch?
We can use the `--show-current` option of the __git-branch__ command to print the current branch’s name.
```
git branch --show-current
```
#### How to Push a New Branch to Remote
As a reminder, to create a new branch, you run `git branch branch-name`. And to switch to that branch so you can work there, you have to run `git switch branch name` or `git checkout branch-name`. 
To push the branch to the remote server, run: 
```
git push -u origin <new-branch>
```
In this case, the name of that branch is `develop`. So, run `git push -u origin develop`

To confirm that the branch has been pushed, head over to GitHub and click the branches drop-down. You should see the branch there:

## How to Push Java Application to GitHub
1. Create a new repository on GitHub
2. Right-click on the project and choose `Show in Local Terminal` > Git Bash
3. (If you don't see Git Bash, then install it)
4. Initialize the local directory as a Git repository.
   ```
   $ git init
   ```
5. Add the files in your new local repository. This stages them for the first commit.
   ```
   $ git add .
   # Adds the files in the local repository and stages them for commit.
   ```
6. Commit the files that you've staged in your local repository
   ```
   $ git commit -m "First Commit"
   # Commits the tracked changes and prepares them to be pushed to a remote repository
   ```
7. Go and copy your remote repository url (it end in .git)
8. In the Command prompt, add the remote repository url
   ```
   $ git remote add origin <remote-repository>
   $ git remote -v
   # Verifies the new remote URL
   ```
9. Push the changes in your local repository to GitHub
   ```
   $ git push orgin master<main>
   # Pushes the changes in your local repository up to the remote repository
   ```

---
## Git Stash Explained: How to Temporarily Store Local Changes in Git
Git has an area called the stash where you can temporarily store a snapshot of your changes without committing them to the repository. It’s separate from the working directory, the staging area, or the repository.

This functionality is useful when you’ve made changes to a branch that you aren’t ready to commit, but you need to switch to another branch.

#### Stash Changes
##### To save your changes in the stash, run the command:
```
git stash save "optional message for yourself"
```
##### or:
```
git stash -m "optional message for yourself"
```
##### or:
```
git stash push -m "optional message for yourself"
```
This saves your changes and reverts the working directory to what it looked like for the latest commit. Stashed changes are available from any branch in that repository.

Note that changes you want to stash need to be on tracked files. If you created a new file and try to stash your changes, you may get the error `No local changes to save`.

#### View Stashed Changes
##### To see what is in your stash, run the command:
```
git stash list
```
This returns a list of your saved snapshots in the format `stash@{0}: BRANCH-STASHED-CHANGES-ARE-FOR: MESSAGE`. The `stash@{0}` part is the name of the stash, and the number in the curly braces (`{ }`) is the index of that stash. If you have multiple change sets stashed, each one will have a different index.

If you forgot what changes were made in the stash, you can see a summary of them with `git stash show "NAME-OF-STASH"`. If you want to see the typical diff-style patch layout (with the +‘s and -‘s for line-by-line changes), you can include the -p (for patch) option. Here’s an example:

```
git stash show -p "stash@{1}"
```
#### Retrieve Stashed Changes
##### To retrieve changes out of the stash and apply them to the current branch you’re on, you have two options:
- `git stash apply STASH-NAME` applies the changes and leaves a copy in the stash
```
git stash apply "stash@{1}"
```
- `git stash pop STASH-NAME` applies the changes and removes the files from the stash
```
git stash pop "stash@{1}"
```
There may be conflicts when you apply changes. You can resolve the conflicts similar to a merge
#### Delete Stashed Changes
##### If you want to remove stashed changes without applying them, run the command:
```
git stash drop STASH-NAME
```
##### To clear the entire stash, run the command:
```
git stash clear
```
#### Advanced notes:
Git stash stashes only the tracked files by default, this includes all the staged and unstaged changes made to the files. But git stash does not stash the following files:
- `Untracked files` – The files which were added to the user’s codebase, but are not yet staged.
- `Ignored files` – The files which are listed down in the gitignore file and ignored by git.

To add the untracked files to the git stash use the flag -u with the git stash command. This stash will not include the ignored files.
```
git stash -u -m "<stash-name>"
```
To include ignored files in the stash use the flag -a. The stash created using this flag will include the tracked, untracked and the ignored files.
```
git stash -a -m "<stash-name>"
```
---
## Merge Conflicts
A merge conflict is when you make commits on separate branches that alter the same line in conflicting ways. If this happens, Git will not know which version of the file to keep in an error message similar to the following:
```
<<<<<<< HEAD
Address: 808 South Street
=======
Address: 505 North Street
>>>>>>> updated_address
```
Think of `=======` as the dividing line of the conflict. Everything between `<<<<<<<` HEAD and `=======` is the content of the current branch that the HEAD ref is pointing to. On the other hand, everything between `=======` and `>>>>>>>` `updated_address` is the content in the branch being merged, `updated_address`.

---
## A complete `.gitignore` file for Java
```.gitignore
# Backupfiles from mergetools #
*.orig

# Compiled class file
*.class

# Java package Files
target/**
*.jar
*.war
*.nar
*.ear
*.zip
*.tar.gz
*.rar

# Eclipse
.settings/
bin/
tmp/
.metadata
.classpath
.project
*.tmp
*.bak
*.swp
*~.nib
local.properties
.loadpath
.factorypath

# IntelliJ
out/
.idea/
.idea_modules/
*.iml
*.ipr
*.iws

# Visual Studio Code
.vscode/
.code-workspace
.classpath
.project
.settings/

# NetBeans
nbproject/private/
build/
nbbuild/
dist/
nbdist/
nbactions.xml
nb-configuration.xml

# Maven
log/
target/
/.mvn
/.maven
/.repository
.flattened-pom.xml

# Gradle
bin/
build/
.gradle
.gradletasknamecache
gradle-app.setting
!gradle-wrapper.jar

# Mac
.DS_Store

# CS56 specific: Secrets files
localhost.json
heroku.json

# External tool builders
.externalToolBuilders/

# Locally stored "Eclipse launch configurations"
*.launch

# Log file
*.log

# BlueJ files
*.ctxt

# Mobile Tools for Java (J2ME)
.mtj.tmp/
```

---
## A complete `.gitignore` file for Spring Boot Application
```.gitignore

# General
.DS_Store
.AppleDouble
.LSOverride

### Maven build files ###
HELP.md
target/
!.mvn/wrapper/maven-wrapper.jar
!**/src/main/**/target/
!**/src/test/**/target/

### Eclipse and STS ###
.apt_generated
.classpath
.factorypath
.project
.settings
.springBeans
.sts4-cache

### IntelliJ IDEA ###
.idea
*.iws
*.iml
*.ipr
out/
!**/src/main/**/out/
!**/src/test/**/out/

### NetBeans ###
/nbproject/private/
/nbbuild/
/dist/
/nbdist/
/.nb-gradle/
build/
!**/src/main/**/build/
!**/src/test/**/build/

### VS Code ###
.vscode/

### Maven ###
.mvn/*
mvnw
mvnw.cmd
```
