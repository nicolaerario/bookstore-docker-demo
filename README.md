# Draft readme for now

### Features:
- Based on Django 3; Postgres for db; both running on docker containers
- Custom User that inherit from AbstractUser class
- Tests for apps and templates
- Bootstrap 4 integration
- User signup, login and logout (also with socials) managed by django-allauth package
- Environments variables in .env files: no more hardcoded in settings and hidden from vcs
### Command list:
- `podman-compose up -d --build` to first time build the image
- `podman-compose up -d` to start images (web and db); -d (detached) means without standard django prompt
- `podman-compose down` to stop and remove images
- `podman exec -ti bookstore-docker-demo_web_1 python manage.py <command>` to execute django `manage.py` commands; -ti stand for interactive terminal
- `podman exec -ti bookstore-docker-demo_web_1 python manage.py test pages` launches test on pages app; without app parameter, it tests all project
