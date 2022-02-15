[![build](https://github.com/fab-infra/docker-samba/actions/workflows/build.yml/badge.svg)](https://github.com/fab-infra/docker-samba/actions/workflows/build.yml)

# Samba Docker image

## Ports

The following ports are exposed by this container image.

| Port | Description |
| ---- | ----------- |
| 139 | NetBIOS port |
| 445 | TCP port |

## Environment variables

The following environment variables can be used with this container.

| Variable | Description | Default value |
| -------- | ----------- | ------------- |
| SMB_HOSTS_ALLOW | Allowed client hosts | 127.0. 192.168.0. |
| SMB_SHARES | List of share:path pairs (comma-separated) | |
| SMB_USER | Share user name | smbuser |
| SMB_PASSWORD | Share user password | smbuser |
| SMB_WORKGROUP | Workgroup name | WORKGROUP |

## Volumes

The following container paths can be used to mount a dedicated volume or to customize configuration.

| Path | Description |
| ---- | ----------- |
| /media | Source media directory |

## Useful links

- [Samba documentation](https://wiki.samba.org/index.php/User_Documentation)
