### 1. お題: 訪問者別の行動集計

**目的:**
特定の日（2016/08/01）のデータを使用し、訪問者（`fullVisitorId`）ごとにセッション中の行動を集計します。
この日はどのユーザーが最も多くサイトを閲覧したか（ページビュー）を調査し、上位15名をリストアップすることが目的です。

**SQLクエリ:**
```sql
select
  fullVisitorId,
  sum(totals.pageviews)as total_pageview_per_visitor,
  sum(totals.transactions)as total_transactions_per_visitor,
  sum(totals.transactionRevenue)as total_revenue_per_visitor
from
  `bigquery-public-data.google_analytics_sample.ga_sessions_20160801`
group by
  1
order by
  2 desc
limit 15;
