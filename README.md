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
_(I manage containers with Podman: rootless and daemonless. Replace the word `podman` with `docker` if you use it)_
- `podman-compose up -d --build` to first time build the image
- `podman-compose up -d` to start images (web and db); -d (detached) means without standard django prompt
- `podman-compose down` to stop and remove images
- `podman exec -ti bookstore-docker-demo_web_1 python manage.py <command>` to execute django `manage.py` commands directly from the container; -ti stand for interactive terminal;
`docker-compose` don't need to specify the interactive terminal parameter and can call the container by shortname, so: `docker-compose exec web python manage.py <command>`.
- `podman exec -ti bookstore-docker-demo_web_1 python manage.py test pages` launches test on pages app; without app parameter, it tests all project
