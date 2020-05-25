# Project in WIP status: draft readme for now

### Features:

- Based on Django 3; Postgres for db; both running on docker containers
- Custom User that inherit from AbstractUser class
- Tests for apps and templates
- Bootstrap 4 integration
- Environments variables in .env files: no more hardcoded in settings and hidden from vcs
- User signup, login and logout (also with socials) managed by django-allauth package
- Custom email signup confirmation

### Command list:

_(If you use `Podman: rootless and daemonless`, replace the word `docker` with `podman`)_

- `docker-compose up -d --build` to build the image for the first time; the migrations are on the VSC so, after the first build, call a `migrate` command (`docker-compose exec web python manage.py migrate`).
- `docker-compose up -d` to start images (web and db); -d (detached) means without standard django prompt
- `docker-compose down` to stop and remove images.
- `docker-compose exec web python manage.py <command>` to execute django `manage.py` commands directly from the container;
  `podman-compose` at this moment don't have a full set of commands. With `podman` we need to specify the interactive terminal parameter (-ti) and to call the container by full name, so: `podman exec -ti bookstore-docker-demo_web_1 python manage.py <command>`.
- `docker-compose exec web python manage.py test pages` launches test on pages app; without app parameter, it tests all project
