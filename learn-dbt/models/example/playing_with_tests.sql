SELECT
  c_custkey,
  c_mktsegment,
  {{rename_segments('c_mktsegment')}} mkt_segment_adjustment
FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER"
