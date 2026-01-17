select * from data;
 -- 1 Manufacture Qty
select sum(`today Manufactured qty`) as 'Manufacture Qty' from data;
 
 
 -- 2 Rejected Qty 
select sum(`Rejected Qty`) as `Rejected Qty` from data;
 
 -- 3 Produced Qty
select sum(`Produced Qty`) as `Produced Qty` from data;
 
 -- 4 Processed Qty
select sum(`Processed Qty`) as 'Processed Qty'  from data;
 
 -- 5 Employee Wise Rejected Qty
select `Emp Name` , sum(`Rejected Qty`) as 'Employee Wise Rejected Qty' 
from data
group by `Emp Name` ;

-- 6 Machine Wise Rejected Qty
select `Machine Code`,sum(`Rejected Qty`) as 'Machine Wise Rejected Qty' from data
group by `Machine Code`;

-- 7 Production Comparison trend 
select date_format(`Doc Date`,'%Y-%M') as date,sum(`today Manufactured qty`) as `Manufactured qty`,sum(`Produced Qty`) as `Produced Qty`,sum(`Processed Qty`) as `Processed Qty`,sum(`Rejected Qty`) as `Rejected Qty`
from data
group by date
order by date;

-- 8 Manufacture Vs Rejected 
select date_format(`Doc Date`,'%Y-%M') as date,sum(`today Manufactured qty`) as `today Manufactured qty`, sum(`Rejected Qty`) as `Rejected Qty`
from data
group by date
order by date;

-- 9 Department Wise Manufacture Vs Rejected 
select `Department Name`,sum(`today Manufactured qty`) as `Manufactured qty`,sum(`Rejected Qty`) as `Rejected Qty`
from data 
group by `Department Name`;


