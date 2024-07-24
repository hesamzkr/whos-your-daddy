# 3. We will use graph db for main data part

Date: 2024-07-24

## Status

Accepted

## Context

We are developing "Who's Your Daddy?", an application aimed at building the world's largest genealogical graph. This requires efficient management and querying of graph-like, open-ended data to support millions of users and numerous third-party applications.

## Decision

We will use Amazon Neptune for the main data part because it:

- Handles Complex Relationships: Ideal for genealogical data.
- High Performance: Supports up to 100,000 RPS.
- Scalability: Easily scales to meet demand.
- Managed Service: Simplifies deployment and maintenance.
## Consequences

### Benefits:

- Efficient querying of family relationships.
- High throughput and low latency.
- Scalable to handle growth.
- Reduced management overhead.

### Risks:
- Learning curve for graph database features.
- Potential vendor lock-in.
