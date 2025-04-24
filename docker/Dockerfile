FROM ubuntu:24.04

RUN apt update && apt install -y software-properties-common && add-apt-repository --yes ppa:kicad/kicad-9.0-releases && apt install -y --install-recommends kicad

RUN useradd -d /home/user -M -u 1001  user
#RUN export uid=1001 && export gid=1001 && \
#    mkdir -p /home/user && \
#    chown ${uid}:${gid} -R /home/user \
#    echo "user:x:${uid}:${gid}:user,,,:/home/user/:/bin/bash" >> /etc/passwd && \
#    echo "user:x:${uid}:${gid}:" >> /etc/group 
#&& 
#    echo "user ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/user && \
#    chmod 0440 /etc/sudoers.d/user && \

USER user
ENV HOME=/home/user
CMD /usr/bin/kicad

