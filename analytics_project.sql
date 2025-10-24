select 
  fullVisitorId, 
  sum(totals.pageviews)as total_pageview_per_visitor,   
  sum(totals.transactions)as total_transactions_per_visitor,
  sum(totals.transactionRevenue)as total_revenue_per_visitor
from bigquery-public-data.google_analytics_sample.ga_sessions_20160801
group by 1
order by 2 desc;