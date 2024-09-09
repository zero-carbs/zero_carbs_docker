# zero_carbs: self hosted

### Requirements:
- Clerk.com account - free
- Cloudflare Workers Paid Plan - $5/mo (optional)
- Docker/Docker Compose
- Some knowledge of networking

---

#### Clerk
- Make a new project in your Clerk dashboard
- Create a new user for the project
- Copy the email address and userId for the new user

#### Hyperdrive (optional)
- Log in to your Cloudflare account
- Create a new Hyperdrive configuration
- Copy the ID and Binding Name

Create a directory for the project

`mkdir -p zero_carbs && cd zero_carbs`

Clone this repo

`git clone https://gitlab.com/zero_carbs/zero_carbs_docker`

Run the `init_update.sh` script to clone the client/server repos

`./init_update.sh`

You may need to make the file executable: `chmod +x init_update.sh` and run it again

Rename `.env.example` to `.env` and update the values where needed

Start the app

`docker compose up -d --build`

Open `http://localhost:1977` in the browser and log in to the app with the email/password you created in Clerk.

You should now have the full app running locally on your computer. You can update by running `git pull` in both the client and server repos. 

Just run the `init_update.sh` script again to update/pull the latest changes from the main branch.
