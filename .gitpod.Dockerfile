FROM gitpod/workspace-full:latest

USER root

RUN apt-get update && apt-get install -y openssh-server

# Copy a custom SSH config file
COPY sshd_config /etc/ssh/sshd_config

# Expose the SSH port (use a high port like 2222 to avoid conflicts)
EXPOSE 2222

# Start the SSH service
RUN service ssh restart
