# Samba server based on openSUSE Leap 15.3
FROM ghcr.io/fab-infra/base-image:opensuse15.3

# Redis
RUN zypper in -y samba &&\
	zypper clean -a

# Files
COPY ./root /
RUN chmod +x /run.sh

# Ports
EXPOSE 139 445
