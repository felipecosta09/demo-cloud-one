# Resource to create sns topic
resource "aws_sns_topic" "user_updates" {
  name = "user-updates-topic"
}
