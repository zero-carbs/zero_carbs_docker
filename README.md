# zero_carbs: self hosted

### Requirements:
- Clerk.com account - free
- Cloudflare Workers Paid Plan - $5/mo (optional)
- Docker/Docker Compose
- Some knowledge of networking (if something goes wrong)

---

#### Clerk
- Make a new project in your Clerk dashboard
- Create a new user for the project
- Copy the email address and userId for the new user

#### Hyperdrive (optional)
- Log in to your Cloudflare account
- Create a new Hyperdrive configuration
- Copy the ID and Binding Name

---

Clone this repo

`git clone https://gitlab.com/zero_carbs/zero_carbs_docker`

Run the `init_update.sh` script to clone the client/server repos

`./init_update.sh`

You may need to make the file executable: `chmod +x init_update.sh` and run it again

Rename `.env.example` to `.env` and update the values where needed

Start the app

`docker compose up -d --build`

Open `http://localhost:1977` in the browser and log in to the app with the email/password you created in Clerk.

You should now have the full app running locally on your computer. 

---

### Updating:

Run the `init_update.sh` script to update/pull the latest changes from the main branch.

---

### Notes:

For those not familiar with self hosting, you should know that the app is running on _your_ computer now. Which is awesome, but it also means that you are responsible for any/all security issues and the handling of access outside your network. ie. If you want to use the app from your phone while you're away from home, you will need to figure out a way to make that happen.

You'll notice the repo urls are from gitlab.com and you may be reading this on github.com. That's because the Github repo is a mirror of the Gitlab repo. They are and always will be the exact same code. When developing, I push to a local Gitlab instance, which mirrors to a public gitlab.com repo, which then mirrors to a public github.com repo. Seems overly complicated I know. I like Gitlab, but more people use Github, so that's just the way it is.
