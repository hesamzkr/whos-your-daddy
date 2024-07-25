# 2. We will use sepparate interface for users and APIs

Date: 2024-07-24

## Status

Accepted

## Context

We need to distinguish between user interfaces and APIs due to their different functionalities. Users require intuitive, responsive UIs, while APIs need robust, secure endpoints for programmatic access. Additionally, companies using our APIs need tools to manage permissions, usage, and costs

## Decision

- User Interfaces (UIs): Designed for end-users with a focus on usability and accessibility, communicating with backends through secure API calls.
- API partners Dashboard: Provides companies with tools for permission management, usage monitoring, and cost control.

## Consequences

### Benefits:

- Enhanced security and performance.
- Improved API management for companies.

### Risks:

- Increased complexity and coordination overhead.
