NAME =			postgresql
VERSION =		latest
VERSION_ALIASES =	9.5 9
TITLE =			PostgreSQL
DESCRIPTION =		The PostgreSQL object-relational database system provides reliability and data integrity.
SOURCE_URL =		https://github.com/scaleway-community/scaleway-postgres

IMAGE_VOLUME_SIZE =	50G
IMAGE_BOOTSCRIPT =	stable
IMAGE_NAME =		PostgreSQL 9.5
VENDOR_URL =		https://www.postgresql.org


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
