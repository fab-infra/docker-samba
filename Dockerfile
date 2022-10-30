# Samba server based on openSUSE Leap 15.4
FROM ghcr.io/fab-infra/base-image:opensuse15.4

# Redis
RUN zypper in -y samba &&\
	zypper clean -a

# Files
COPY ./root /

# Ports
EXPOSE 139 445
