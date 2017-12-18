alias s3sync="aws s3 sync . s3://mk-cloud/ --profile default --exclude '._*' --exclude '*/._*' --exclude '.DS_Store' --exclude '*/.DS_Store'"
alias s3clean="aws s3 rm s3://mk-cloud/ --recursive --exclude '*' --include '._*' --include '*/._*' --include '.DS_Store' --include '*/.DS_Store'"
