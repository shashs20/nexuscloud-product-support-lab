# NexusCloud Product Support Troubleshooting Lab

A simulated SaaS Product Support lab demonstrating practical troubleshooting across customer accounts, subscriptions, orders, and API requests.

## Overview

In this project, I worked through six simulated Product Support cases as a Junior Product Support Specialist. I used MySQL Workbench to investigate application data, Postman to test API requests, and structured support documentation to record findings, next actions, and escalations.

NexusCloud is a fictional SaaS environment created for hands-on Product Support practice.

## Tools

- MySQL Workbench
- SQL
- Postman
- Microsoft Word

## Support Cases

### SUP-001 — Customer Unable to Access Account
Investigated an inactive customer account and expired subscription using SQL queries and a JOIN to compare account and subscription data.

### SUP-002 — Customer Unable to Find Order
Investigated a missing order using customer ID, product, and order-date filtering. No matching order was found, so the case was escalated with the available evidence.

### SUP-003 — Customer Subscription Information Incorrect
Investigated a customer reporting a Pro upgrade while the subscription remained Basic. Compared subscription and order data and escalated the discrepancy for transaction verification.

### SUP-004 — API Authentication Failure
Used Postman to reproduce an HTTP 401 response, checked the request's authorization configuration, and investigated missing authentication as a likely cause.

### SUP-005 — Order Lookup Input Handling
Tested an order ID query parameter with and without trailing whitespace. Reproduced the input-handling behaviour 3/3 times and documented expected behaviour, observed behaviour, potential impact, and evidence for engineering review.

### SUP-006 — Pending Order / Product Access Escalation
Used SQL to identify a pending NexusCloud Backup order while the customer's account and subscription remained active. Used Postman to construct and inspect an API request with the affected order parameters, then produced a structured Engineering / Operations escalation.

## Skills Demonstrated

- SQL `SELECT`, `WHERE`, `AND`, `JOIN`, and multi-table investigation
- Customer, subscription, and order data troubleshooting
- REST API request testing with Postman
- HTTP status-code interpretation, including `200` and `401`
- Bearer-token authentication fundamentals
- Query-parameter testing
- Issue reproduction and evidence gathering
- Expected vs observed behaviour documentation
- Root-cause investigation without overclaiming unsupported conclusions
- Ticket documentation and technical escalation
- Communicating technical findings clearly

## Repository Contents

- `NexusCloud-Product-Support-Troubleshooting-Lab.pdf` — full six-case troubleshooting portfolio with investigation evidence
- `nexuscloud-support-lab.sql` — database setup, sample data, and SQL investigation queries

## Notes

This is a simulated learning project. NexusCloud and its customers are fictional. Postman Echo was used to practise API request/response investigation and is not connected to the simulated MySQL database.
