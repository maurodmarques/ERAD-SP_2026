# Devcontainer Dockerfile for GitHub Codespaces replicating previous Gitpod environment
# Start from an Ubuntu Jammy image with common dev utilities
FROM mcr.microsoft.com/devcontainers/base:jammy

# Avoid prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install HPCC Systems platform community edition (same version as Gitpod config)
WORKDIR /tmp
RUN apt-get update -y \
    && apt-get install -y wget gnupg lsb-release sudo \
    && wget https://github.com/hpcc-systems/HPCC-Platform/releases/download/community_9.14.22-1/hpccsystems-platform-community_9.14.22-1jammy_amd64_withsymbols.deb \
    && apt-get install -y --fix-missing ./hpccsystems-platform-community_9.14.22-1jammy_amd64_withsymbols.deb \
    && rm -f hpccsystems-platform-community_9.14.22-1jammy_amd64_withsymbols.deb \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy default environment configuration (overridable by bind mount)
COPY ./environment/*.xml /etc/HPCCSystems/

# Expose same ports (Codespaces will map/forward selectively)
EXPOSE 8010 18010 8002 18002 6000-9999 20000 20002 20100

# Provide a helper script to (re)start the platform
COPY .devcontainer/scripts/start-hpcc.sh /usr/local/bin/start-hpcc.sh
RUN chmod +x /usr/local/bin/start-hpcc.sh

# Provide two helper scripts to install operation: ECL vscode extensions and ECL bundles
COPY .devcontainer/scripts/install-extensions.sh /usr/local/bin/install-extensions.sh
COPY .devcontainer/scripts/install-bundles.sh /usr/local/bin/install-bundles.sh
RUN chmod +x /usr/local/bin/install-*.sh

# Install General and Machine Learning Bundles - Not used!
# RUN ecl bundle install https://github.com/hpcc-systems/DataPatterns.git \
#     && ecl bundle install https://github.com/hpcc-systems/Visualizer.git \
#     && ecl bundle install https://github.com/hpcc-systems/ML_Core.git \
#     && ecl bundle install https://github.com/hpcc-systems/PBblas.git \
#     && ecl bundle install https://github.com/hpcc-systems/LearningTrees.git

# Default command keeps container alive (services managed by postStartCommand)
CMD ["bash"]
