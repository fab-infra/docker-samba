# Samba server based on openSUSE Leap 15.6
FROM ghcr.io/fab-infra/base-image:opensuse15.6

# Packages
RUN zypper in -y samba &&\
	zypper clean -a

# Files
COPY ./root /

# Ports
EXPOSE 139 445
