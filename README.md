# blackbox_container

containerized version of blackbox from Henry Kautz.
https://gitlab.com/HenryKautz/BlackBox/

Usage:


- build the image with docker/podman build command

podman build /path/were/dockerFile/is/located/ -t tag/to_identify_your_image

- run image

podman run -v /path/with/problems_definitions:/problems:Z  --name myBlackBox --rm tag/to_identify_your_image sh -c "/blackbox -maxauto 100 -o /problems/dominio_movie.pddl -f /problems/problema1_movie.pddl -solver -maxsec 0  graphplan"



