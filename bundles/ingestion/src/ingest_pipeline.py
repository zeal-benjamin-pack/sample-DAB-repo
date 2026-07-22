# Databricks notebook source
from pyspark import pipelines as dp
from pyspark.sql import functions as F

# COMMAND ----------

@dp.table(
    name="raw_events",
    comment="Synthetic event data fabricated at pipeline execution time.",
)
def raw_events():
    return (
        spark.range(0, 1000)
        .withColumn("event_id", F.expr("uuid()"))
        .withColumn(
            "event_type",
            F.element_at(
                F.array(F.lit("click"), F.lit("view"), F.lit("purchase")),
                (F.col("id") % 3 + 1).cast("int"),
            ),
        )
        .withColumn("event_value", F.round(F.rand() * 100, 2))
        .withColumn("event_timestamp", F.current_timestamp())
        .drop("id")
    )

# COMMAND ----------

@dp.table(
    name="event_summary",
    comment="Row counts and average value per fabricated event type.",
)
def event_summary():
    return (
        dp.read("raw_events")
        .groupBy("event_type")
        .agg(
            F.count("*").alias("event_count"),
            F.round(F.avg("event_value"), 2).alias("avg_event_value"),
        )
    )
