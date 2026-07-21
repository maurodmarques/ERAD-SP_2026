FROM gitpod/workspace-full

RUN sudo apt-get -y update

# Install the hpcc-systems platform.
WORKDIR /tmp

RUN wget https://github.com/hpcc-systems/HPCC-Platform/releases/download/community_9.2.2-1/hpccsystems-platform-community_9.2.2-1jammy_amd64_withsymbols.deb
RUN sudo apt-get install -y --fix-missing ./hpccsystems-platform-community_9.2.2-1jammy_amd64_withsymbols.deb
RUN rm -f hpccsystems-platform-community_9.2.2-1jammy_amd64_withsymbols.deb

COPY ./environment/*.xml /etc/HPCCSystems
