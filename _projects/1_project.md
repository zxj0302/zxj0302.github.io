---
layout: page
title: Adaptive Rate Limiting Engine in Go
description: Token-bucket and sliding-window hybrid rate limiter with Redis-backed distributed mode
importance: 1
category: work
---

A high-performance rate limiting engine written in Go that combines token-bucket and sliding-window algorithms into a unified hybrid design.

**Key highlights:**

- Designed a token-bucket and sliding-window hybrid rate limiter in Go
- Achieved 4× throughput increase via sharded atomic counters and lock-free reads
- Supports Redis-backed distributed mode with <1 ms P99 latency under 50K RPS load

**Technologies:** Go, Redis
