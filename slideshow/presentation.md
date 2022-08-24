---
marp: true
---
<!--
size: 16:9
theme: gaia
class: gaia
-->

# Dockerizing a Rails application

Fernando Shayani

---

# Plan
- Basic Rails application
- Configure environment variables

- Create and build Dockerfile
- Create Docker Compose file
- Using the container stack

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
