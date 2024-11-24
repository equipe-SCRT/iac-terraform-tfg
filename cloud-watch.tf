resource "aws_cloudwatch_metric_alarm" "snsFailed" {
  alarm_name                = "scrt-sns-failed-notification"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = 1
  metric_name               = "NumberOfNotificatonsFailed"
  namespace                 = "AWS/SNS"
  period                    = 60
  statistic                 = "Average"
  threshold                 = 1
  alarm_description         = "Alerta em relação a falhas sistemicas"
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "chargesS3" {
  alarm_name                = "scrt-estimated-charges-s3"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = 6
  metric_name               = "EstimatedCharges"
  namespace                 = "AWS/S3"
  period                    = 60
  statistic                 = "SampleCount"
  threshold                 = 10
  alarm_description         = "Alerta em relação ao preço do serviço S3"
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "errorsLambda" {
  alarm_name                = "scrt-error-lambda"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = 1
  metric_name               = "Errors"
  namespace                 = "AWS/Lambda"
  period                    = 60
  statistic                 = "SampleCount"
  threshold                 = 3
  alarm_description         = "Alerta em relação a falhas sistemicas"
  insufficient_data_actions = []
}

resource "aws_cloudwatch_metric_alarm" "foobar" {
  alarm_name                = "scrt-cpu-percent"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = 1
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/S3"
  period                    = 60
  statistic                 = "SampleCount"
  threshold                 = 70
  alarm_description         = "Alerta em relação a falhas sistemicas"
  insufficient_data_actions = []
}



