Step 1 – Create a locker on GitHub

First, open github.com and create a new repository.

Give it a name, for example:

terraform modules

After creating the repository, GitHub gives you a URL like:

https://github.com/yourname/azure-landing-zone.git

👉 Keep this URL ready. We will use it later.

Step 2 – Open your project

Open VS Code and open the folder where your project is stored.

Example:

D:\Terraform\azure-landing-zone

This folder contains all your files such as:

main.tf

variables.tf

outputs.tf

modules/

Step 3 – Tell Git to start tracking the folder

Open the terminal in VS Code and run:

git init

This creates a hidden .git folder.

👉 Now Git starts watching every change in your project.

Step 4 – Introduce yourself to Git

The first time, Git needs your name and email.

git config --global user.name "Sunita Negi"
git config --global user.email "your-email@gmail.com"

Think of this as putting your signature on every commit.

Step 5 – Check what Git can see

Run:

git status

Git will show all the files that are untracked.

👉 This means Git can see the files, but they are not added yet.

Step 6 – Add all files

Run:

git add .

Now all project files are moved to the staging area.

Think of it as collecting all files in a box before sending them.

Step 7 – Create the first commit

Run:

git commit -m "Initial commit - Azure Landing Zone Terraform code"

This creates the first snapshot of your project.

👉 If you make mistakes later, you can come back to this snapshot.

Step 8 – Rename the branch

Run:

git branch -M main

Now your main working branch is called main.

Step 9 – Connect to GitHub

Run:

git remote add origin https://github.com/yourname/azure-landing-zone.git

This command tells Git:

👉 “My cloud locker is this GitHub repository.”

Step 10 – Push the code

Finally, run:

git push -u origin main

Git will ask you to log in to GitHub in the browser.

After successful login, your entire project is uploaded.

🎉 Congratulations! Your code is now available on GitHub.

The whole journey in one flow
Create GitHub repository
        ↓
Open project in VS Code
        ↓
git init
        ↓
git add .
        ↓
git commit -m "Initial commit"
        ↓
git branch -M main
        ↓
git remote add origin <repo-url>
        ↓
git push -u origin main
        ↓
Code successfully uploaded to GitHub ✅
Next time is much easier

Whenever you change the code:

git add .
git commit -m "Added new changes"
git push

That’s it — only three commands are needed after the first push.

Easy way to remember

Init → Add → Commit → Connect → Push

Init = Start Git

Add = Select files

Commit = Save a snapshot

Connect = Link with GitHub

Push = Upload the code

This is the exact flow followed by developers when pushing code to GitHub for the first time.
