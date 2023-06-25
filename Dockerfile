FROM ubuntu:20.04
RUN apt update && apt install python3.9 -y && apt install pip3 -y
COPY requirement.txt /tmp/requirement.txt
RUN pip install -r requirement.txt
ADD https://storage.googleapis.com/git-repo-downloads/repo  /usr/bin/repo
ENTRYPOINT [ "/bin/bash" ]