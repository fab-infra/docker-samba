# Samba server based on openSUSE Leap 16.0
FROM ghcr.io/fab-infra/base-image:opensuse16.0

# Packages
RUN zypper in -y samba &&\
	zypper clean -a

# Files
COPY ./root /

# Ports
EXPOSE 139 445
