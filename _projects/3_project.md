---
layout: page
title: Linear Shortest Path Index on Multi-Attribute Networks
description: Partition-based index for preference-weighted shortest path queries on multi-criteria road networks
importance: 3
category: research
---

**Tianjin University** &nbsp;·&nbsp; Jun 2021 – Jun 2023 &nbsp;·&nbsp; C++, CMake, Git, CGAL

- Built a partition-based index combining tree decomposition and convex hull computation to answer preference-weighted shortest path queries on multi-criteria road networks in real time
- Designed a dimension-reducing point-location mapping and A\* search with precomputed heuristics, achieving 25× speedup over Dijkstra with 23 ms query time on million-vertex 3D graphs
- Optimized construction via convex hull merge and cross-partition parallelization; evaluated on 5 real US road networks (up to 1.2M vertices, 2–5 cost dimensions)
