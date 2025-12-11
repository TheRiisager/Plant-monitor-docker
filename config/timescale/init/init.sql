CREATE TABLE IF NOT EXISTS readings(
   "time"            timestamptz not null,
   device_name       text not null,
   temperature       float
   soil_moisture     float
) WITH (
   timescaledb.hypertable,
   timescaledb.chunk_interval='1 day'
);

SELECT add_retention_policy('conditions_realtime', INTERVAL '1 year');