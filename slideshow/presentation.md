---
marp: true
---
<!--
size: 16:9
theme: gaia
class: gaia
paginate: true
-->

# Dockerizing a Rails application
for production deployment

<br/><br/><br/><br/><br/><br/>

Fernando Shayani

---
# The goal

Turn a rails application into a docker container that can be deployed easly and faster into production.

---

# Plan
- Start with a basic Rails application
- Configure environment variables
- Create Dockerfile
- Upload to Docker Hub
- Run final app with Docker Compose

---

# The application

### Current scenario

- Rails 6.1 application
- Local PostgreSQL instance

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

---

# Step 3: Upload to Docker Hub

---

# Step 4: Running on production

---

# Using the container stack

### Starting up

```docker compose up```

### Shutting down

```docker compose down```

---

## Executing commands

- ```docker compose app bundle exec rails console```

- ```docker compose app bundle exec bash```
