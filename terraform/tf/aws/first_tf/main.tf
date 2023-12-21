resource "aws_s3_bucket" "first_bucket" {
    bucket = "11dec2023"
    tags = {
      Name  ="first bucket"
      Environment ="development" 
    }
  
}