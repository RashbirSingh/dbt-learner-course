{% snapshot first_model_snapshot %}

{{
    config(
      target_database='ANALYTICS',
      target_schema='snapshots',
      unique_key='ID',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from {{ ref('my_first_dbt_model') }}

{% endsnapshot %}
