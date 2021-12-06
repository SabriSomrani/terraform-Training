provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "tunis"
  region = "ap-south-1"

}
