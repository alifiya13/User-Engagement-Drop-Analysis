/* Calculate the weekly user engagement?*/

SELECT WEEK(occurred_at) AS week_of_theYEAR,
COUNT(DISTINCT user_id) AS weekly_active_users
FROM events_table
WHERE event_type = 'engagement'
AND event_name = 'login'
GROUP BY 1
ORDER BY 1;


/* Calculate the user growth for product */

SELECT state, count(state),MONTH(created_at) AS months
FROM users_table
GROUP BY MONTH(created_at) , state;


/*Calculate the weekly retention of users-sign up cohort? */

SELECT WEEK(occurred_at) AS weeks,
COUNT(CASE WHEN event_type = 'signup_flow' THEN user_id ELSE NULL END) AS signup       
FROM events_table
GROUP BY 1
ORDER BY 1;

/*Calculate the weekly engagement per device? */

/*getting the list of devices first for grouping them as computes, mobiles etc*/
SELECT DISTINCT device FROM events_table;

SELECT WEEK(occurred_at) AS week_of_theYEAR,
COUNT(DISTINCT user_id) AS weekly_users,
COUNT(DISTINCT CASE WHEN device IN ('macbook pro', 'acer aspire notebook','acer aspire desktop','lenovo thinkpad', 'mac mini', 'dell inspiron desktop','dell inspiron notebook','windows surface','macbook air','asus chromebook','hp pavilion desktop') THEN user_id ELSE NULL END) AS computer,
COUNT(DISTINCT CASE WHEN device IN ('iphone 5s','nokia lumia 635','amazon fire phone','iphone 4s','htc one','iphone 5','samsung galaxy s4') THEN user_id ELSE NULL END) AS phone,
COUNT(DISTINCT CASE WHEN device IN ('kindle fire','samsung galaxy note','ipad mini','nexus 7','nexus 10','samsumg galaxy tablet','nexus 5','ipad air') THEN user_id ELSE NULL END) AS tablet
FROM events_table
WHERE event_type = 'engagement'
AND event_name = 'login'
GROUP BY 1
ORDER BY 1;


/*Calculate the email engagement metrics?*/

SELECT DISTINCT action FROM email_events_table;
/*There are 4 types of action regarding emails*/

SELECT WEEK(occurred_at) AS weeks,
COUNT(CASE WHEN action = 'sent_weekly_digest' THEN user_id ELSE NULL END) AS sent_weekly_digest,
COUNT(CASE WHEN action = 'email_open' THEN user_id ELSE NULL END) AS email_open,
COUNT(CASE WHEN action = 'email_clickthrough' THEN user_id ELSE NULL END) AS email_clickthrough,
COUNT(CASE WHEN action = 'sent_reengagement_email' THEN user_id ELSE NULL END) AS sent_reengagement_email
FROM email_events_table
GROUP BY 1
ORDER BY 1;
