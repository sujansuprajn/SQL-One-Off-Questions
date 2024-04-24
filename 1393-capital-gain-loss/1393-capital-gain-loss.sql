select distinct(stock_name) , sum(
    case when operation = "Buy" then -price
    else price
    end) over (partition by stock_name) as capital_gain_loss

from stocks 

