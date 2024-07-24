# 4. PG for user information

Date: 2024-07-24

## Status

Accepted

## Context

We need a reliable database for user authentication and storing user-related data. This data must be consistent and transactional, but it does not require extremely high performance

## Decision

We will use PostgreSQL (PG) for managing user information due to its strong ACID compliance, reliability, and consistency features.

## Consequences

## Benefits:

- Data Consistency: Ensures reliable and consistent user data.
- ACID Compliance: Supports transactions for secure and reliable user authentication.
- Proven Technology: PostgreSQL is a mature, widely-used database with a strong support community.

## Risks:

- Performance: While PostgreSQL is performant, it may not handle very high write loads as efficiently as some other databases.
- Complexity: Requires proper configuration and tuning to optimize performance.