from pyspark import pipelines as dp

BASE_DIR = "/Volumes/marathos/default/raw"
FILE_NAME = "TWO_CENTURIES_OF_UM_RACES.csv"

schema = (
    spark.read.format("csv")
    .option("header", "true")
    .option("inferSchema", "true")
    .load(f"{BASE_DIR}/{FILE_NAME}")
    .schema
)


@dp.table(
    name="marathos.bronze.results_raw",
    comment="Raw marathon results data ingested into the bronze layer",
    table_properties={
        "delta.columnMapping.mode": "name",
        "delta.minReaderVersion": "2",
        "delta.minWriterVersion": "5",
    },
)
def results_raw():
    return (
        spark.readStream.format("csv")
        .option("header", "true")
        .schema(schema)
        .load(BASE_DIR)
    )