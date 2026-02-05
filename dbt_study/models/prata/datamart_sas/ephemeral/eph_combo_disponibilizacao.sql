select
  id      as combo_disponibilizacao_id,
  nome    as combo_disponibilizacao_nome,
  comboid as combo_id
from {{ source('datamart_sas_bronze', 'combo_disponibilizacao') }}