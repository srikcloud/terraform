backend "s3"{
bucket = "srikcloud-statefile-dev"
key    = "rtfvars-demo-prod"
region = "us-east-1"
encrypt = true
use_lockfile = true
}
