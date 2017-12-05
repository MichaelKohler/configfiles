alias s3sync="aws s3 sync . s3://mk-cloud/ --profile default --exclude '._*' --exclude '*/._*'"
alias s3clean="aws s3 rm s3://mk-cloud/ --recursive --exclude '*' --include '._*' --include '*/._*'"
