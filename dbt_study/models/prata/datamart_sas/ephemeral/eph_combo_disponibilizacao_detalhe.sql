select
  combodisponibilizacaoid as combo_disponibilizacao_id,
  combodetalheid          as combo_detalhe_id,

  coalesce(cast(eventoid as string), "")                    as event_id,
  coalesce(cast(portfoliodisponibilizacaoid as string), "") as portfolio_disponibilizacao_id,

  codsebrae
from {{ source('datamart_sas_bronze', 'combo_disponibilizacao_detalhe') }}
