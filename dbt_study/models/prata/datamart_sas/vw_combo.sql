{{ config(alias='combo') }}

with
combo as (
  select * from {{ ref('eph_combo') }}
),

combo_disponibilizacao as (
  select * from {{ ref('eph_combo_disponibilizacao') }}
),

combo_disponibilizacao_detalhe as (
  select * from {{ ref('eph_combo_disponibilizacao_detalhe') }}
)

select
  a.combo_id,
  a.combo_nome,
  b.combo_disponibilizacao_id,
  b.combo_disponibilizacao_nome,
  c.combo_detalhe_id,
  concat(c.event_id, c.portfolio_disponibilizacao_id, cast(c.codsebrae as string)) as chave_portfolio
from combo a
left join combo_disponibilizacao b
  on a.combo_id = b.combo_id
left join combo_disponibilizacao_detalhe c
  on b.combo_disponibilizacao_id = c.combo_disponibilizacao_id
