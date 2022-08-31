---
marp: true
---
<!--
size: 16:9
theme: gaia
class: gaia
-->

# Dockerizing a Rails application
for production deployment

<br/><br/><br/><br/><br/><br/>

Fernando Shayani

---
# The goal

Turn a rails application into a docker container that can be deployed easly and fast into production.

---

# Plan
- Why?
- Start with a basic Rails application
- Configure environment variables
- Create Dockerfile
- Upload to Docker Hub
- Run on production

---

# Why dockerize my Rails application?

- Speed up deployments
- Prevent errors
- Easier to move between providers
---

# The example application

- Simple Rails contact list application
- Rails 6.1 application
- Local PostgreSQL instance

---

# The example application


![Contact application](https://res.cloudinary.com/practicaldev/image/fetch/s--JjP1xkII--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/2e949aqahdzbr6q3fe2q.png)

---
<!-- _class: lead -->

# Let's start!

---

# Step 1: Environment variables

```
/config/database.yml

...
host: <%= ENV['DB_HOST'] || 'localhost' %>
username: <%= ENV['DB_USERNAME'] || 'postgres' %>
password: <%= ENV['DB_PASSWORD'] || 'postgres' %>
...
```

Remember to set a default!

---
# Step 2: The Dockerfile

- `Dockerfile` on root folder
- Define base image
- Install dependencies
- Run builders (bundle, yarn, etc)
- Set startup command

#### Create a `.dockerignore` file!

---

# Step 3: Building the container

```
docker build . --tag YOUR_IMAGE_REPO_AND_NAME
```

---

# Step 4: Upload to Docker Hub (optional)

```
docker push YOUR_IMAGE_REPO_AND_NAME
```

---

# Running on production

- Create the `docker-compose.yml` file
- Setup/Migrate the database (if necessary)
  - `docker compose run --rm app bundle exec rails db:setup`
- Start the stack
  - `docker compose up`
- Access rails console
  - `docker compose exec app bundle exec rails console`


---

# What's next?

- Configure your web server
- Updating your code and container

---

<!-- _class: lead -->
# Final tip!

---

# Watchtower

![Watchtower](https://containrrr.dev/watchtower/images/logo-450px.png)

https://containrrr.dev/watchtower/

---

<!-- _class: lead -->

# Thank you!

Github repository: [github.com/shayani/dockerizing_rails_app](https://github.com/shayani/dockerizing_rails_app)

Blog post: [dev.to/shayani](https://dev.to/shayani)
