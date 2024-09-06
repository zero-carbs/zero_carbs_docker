# zero_carbs: self hosted

### Requirements:
- Clerk.com account - free
- Cloudflare Workers Paid Plan - $5/mo (optional)
- Docker/Docker Compose
- Some knowledge of networking

---

#### Clerk
Make a new project in your Clerk dashboard
Create a new user for the project
Copy the email address and userId for the new user

#### Cloudflare Hyperdrive (optional)
Log in to your Cloudflare account
Create a new Hyperdrive configuration
Copy the ID and Binding Name

Create a directory for the project
`mkdir -p zero_carbs && cd zero_carbs`

Clone this repo
`git clone <docker-repo>`

Clone the frontend
`git clone <client-repo>`

Clone the backend
`git clone <server-repo>`

Rename `.env.example` to `.env` and update the values where needed

Start the app
`docker compose up -d --build`
