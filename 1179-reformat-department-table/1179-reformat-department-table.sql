SELECT id, SUM(DECODE(month, 'Jan', revenue)) AS Jan_Revenue
           , SUM(DECODE(month, 'Feb', revenue)) AS Feb_Revenue
           , SUM(DECODE(month, 'Mar', revenue)) AS Mar_Revenue
           , SUM(DECODE(month, 'Apr', revenue)) AS Apr_Revenue
           , SUM(DECODE(month, 'May', revenue)) AS May_Revenue
           , SUM(DECODE(month, 'Jun', revenue)) AS Jun_Revenue
           , SUM(DECODE(month, 'Jul', revenue)) AS Jul_Revenue
           , SUM(DECODE(month, 'Aug', revenue)) AS Aug_Revenue
           , SUM(DECODE(month, 'Sep', revenue)) AS Sep_Revenue
           , SUM(DECODE(month, 'Oct', revenue)) AS Oct_Revenue
           , SUM(DECODE(month, 'Nov', revenue)) AS Nov_Revenue
           , SUM(DECODE(month, 'Dec', revenue)) AS Dec_Revenue
  FROM Department
 GROUP BY id