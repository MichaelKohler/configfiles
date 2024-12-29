# Initial

gtar --create --verbose -z --file=/Volumes/MK/2024-12-29-full-nextcloud-backup.tar.gz --listed-incremental="/Volumes/MK/incremental.snar" Nextcloud

gpg -c /Volumes/MK/2024-12-29-full-nextcloud-backup.tar.gz

rm /Volumes/MK/2024-12-29-full-nextcloud-backup.tar.gz

gpg -c /Volumes/MK/incremental.snar

rm /Volumes/MK/incremental.snar

# Incremental

gpg -d /Volumes/MK/incremental.snar.gpg > /Volumes/MK/incremental.snar

rm /Volumes/MK/incremental.snar.gpg

gtar --create --verbose -z --file=/Volumes/MK/2024-12-30-incremental-nextcloud-backup.tar.gz --listed-incremental="/Volumes/MK/incremental.snar" Nextcloud

gpg -c /Volumes/MK/2024-12-30-incremental-nextcloud-backup.tar.gz

rm  /Volumes/MK/2024-12-30-incremental-nextcloud-backup.tar.gz

gpg -c /Volumes/MK/incremental.snar

rm /Volumes/MK/incremental.snar