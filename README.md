# Draft readme for now

command list:
- `podman-compose up -d --build` to first time build the image
- `podman-compose up -d` to start images (web and db); -d (detached) means without standard django prompt
- `podman-compose down` to stop and remove images
- `podman exec -ti bookstore-docker-demo_web_1 python manage.py <command>` to execute django `manage.py` commands; -ti stand for interactive terminal
- `podman exec -ti bookstore-docker-demo_web_1 python manage.py test pages` launches test on pages app; without app parameter, it tests all project
