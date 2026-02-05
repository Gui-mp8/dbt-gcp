select
  id   as combo_id,
  nome as combo_nome
from {{ source('datamart_sas_bronze', 'combo') }}
