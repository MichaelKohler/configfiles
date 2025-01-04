# Initial

gtar --create --verbose -z --file=/Volumes/MK/2024-12-29-full-nextcloud-backup.tar.gz --listed-incremental="/Volumes/MK/incremental.snar" Nextcloud

gpg -c /Volumes/MK/2024-12-29-full-nextcloud-backup.tar.gz

rm /Volumes/MK/2024-12-29-full-nextcloud-backup.tar.gz

gpg -c /Volumes/MK/incremental.snar

rm /Volumes/MK/incremental.snar

# Somewhat incremental... using --listed-incremental did not really work as it backed up everything...

gtar --create --verbose -z --file=/Volumes/MK/2025-01-04-incremental-nextcloud-backup.tar.gz --newer-mtime="29 Dec 2024" Nextcloud

gpg -c /Volumes/MK/2025-01-04-incremental-nextcloud-backup.tar.gz

rm  /Volumes/MK/2025-01-04-incremental-nextcloud-backup.tar.gz
