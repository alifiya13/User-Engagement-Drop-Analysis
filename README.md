## User Engagement Drop Analysis using SQL

**Project Description**: Yammer is a social network for communicating with coworkers. Individuals share documents, updates, and ideas by posting them in groups. Yammer is free to use indefinitely, but companies must pay license fees if they want access to administrative controls, including integration with user management systems like ActiveDirectory. Yammer analysts are trained to constantly consider the value of each individual project; they seek to maximize the return on their time. Analysts typically opt for less precise solutions to problems if it means investing substantially less time as well.They are also taught to consider the impact of everything on the company at large. This includes high-level decision making like choosing which projects to prioritize. It also influences the way analysts think about metrics. Product decisions are always evaluated against core engagement, retention, and growth metrics in addition to product-specific usage metrics (like, for example, the number of times someone views another user’s profile). The goal of this project is to determine a dip caused in the number of engaged users (Yammer defines engagement as having made some type of server call by interacting with the product) in the last week of July.

### Drop-in User Engagement Findings

**Conclusions** : UI/UX problem in mobiles and tables.

Looked into following metrics to figure out source of the problem:

1. Event types with highest drop rate over the months
2. CTRs of engagement/reengagement emails.
3. Change in percentage of email CTRs for each type of device(mobile, tablet and desktop) and each device.
4. Found a high drop rate in mobile and tablet devices.
