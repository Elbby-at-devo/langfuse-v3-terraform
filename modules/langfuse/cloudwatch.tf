resource "aws_cloudwatch_log_group" "langfuse_worker" {
  name              = "/aws/ecs/langfuse_worker_log"
  retention_in_days = 3
  tags = {
    Name = "langfuse_worker"
  }
}

resource "aws_cloudwatch_log_group" "clickhouse" {
  name              = "/aws/ecs/langfuse_clickhouse_log"
  retention_in_days = 3
  tags = {
    Name = "langfuse_clickhouse"
  }
}


resource "aws_cloudwatch_log_group" "langfuse_cache_slow_log" {
  name              = "/aws/redis/langfuse_cache_slow_log"
  retention_in_days = 3
  tags = {
    Name = "langfuse_cache_slow_log"
  }
}

resource "aws_cloudwatch_log_group" "langfuse_cache_engine_log" {
  name              = "/aws/ecs/langfuse_cache_engine_log"
  retention_in_days = 3
  tags = {
    Name = "langfuse_cache_engine_log"
  }
}