# Git Basics

## Overview
Git is a version control system used to track changes in code and enable collaboration.

---

## Version Control

- Tracks changes over time  
- Allows reverting to previous versions  
- Supports collaboration between developers  

---

## Centralised vs Distributed

- **Centralised** → one central server (single point of failure)  
- **Distributed (Git)** → every user has a full copy of the repository  

---

## Git Workflow

- **Working Directory** → where files are modified  
- **Staging Area** → where changes are prepared  
- **Repository** → where changes are permanently stored  

---

## Git Terminology

- Repository (repo)  
- Commit  
- Branch  
- Merge  
- Clone  
- Pull / Push  
- Remote  
- HEAD  

---

## Git Directories

- `.git/` → stores all repository data  
- Working directory → current project files  
- Staging area → tracked changes before commit  

---

## Viewing History

- `git log` → view commit history  
- `git log --oneline` → compact history  
- `git show` → details of a commit  
- `git diff` → changes not staged  
- `git diff --staged` → staged changes  
- `git blame` → who changed what  
- `git reflog` → history of HEAD changes  

---

## Common Commands

- `git init` → initialise repository  
- `git clone` → copy repository  
- `git add` → stage changes  
- `git commit` → save changes  
- `git push` → upload changes  
- `git pull` → fetch + merge changes  
- `git status` → check state  

---

## Branching

- `git branch` → create/list branches  
- `git switch` → change branch  
- `git branch -d` → delete branch  

---

## Merging

- **Fast-forward** → simple merge when no divergence  
- **Recursive** → standard merge with history  
- **Conflict** → manual resolution required  

---

## Merge vs Rebase

- **Merge** → combines histories (keeps full history)  
- **Rebase** → rewrites history for a cleaner timeline  

---

## Stash

- `git stash` → temporarily save changes  
- `git stash pop` → reapply saved changes  

---

## Undoing Changes

- `git revert` → create new commit to undo changes  
- `git reset` → move HEAD to previous commit  
- `git cherry-pick` → apply specific commit to another branch  
