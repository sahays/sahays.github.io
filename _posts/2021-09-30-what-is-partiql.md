---
layout: post
title: "What is PartiQL?"
categories: database
---

PartiQL [1] -- pronounced _Particle_ -- is an ANSI SQL-92 compatible query language developed by Amazon for querying, defining, and transforming data across relational, non-relational, and semi-structured databases. It addresses the complexities of modern data landscapes by extending SQL to handle nested and semi-structured data as first-class citizens, promoting format and data store independence. This makes PartiQL a versatile tool for AWS services like DynamoDB, S3 Select, QLDB, IoT TwinMaker, and Redshift, supporting scalable, web-scale database development. Its design principles focus on SQL compatibility, minimal extensions to SQL, and ease of use across various data management scenarios.

## How does PartiQL work?

PartiQL extends SQL with additional syntax to handle nested and semi-structured data, allowing it to query data in various formats and from different storage systems seamlessly. It translates PartiQL queries into a format that the underlying data stores can understand, whether relational, non-relational, or data lakes. This process involves parsing the queries, planning the execution strategy, and evaluating them against the data.

The language's design ensures compatibility with SQL standards, enabling users to apply their existing SQL knowledge while benefiting from PartiQL's capabilities to handle complex data structures efficiently. Through its compiler's modularity and extensibility, PartiQL facilitates the development of scalable, web-scale databases, enhancing data management and analysis across AWS's ecosystem.

## Did we need another SQL dialect?

The PartiQL specification [5] is based on "SQL++: A SQL Dialect for Semi-Structured Data" [2][8]. The paper outlines compelling reasons for developing PartiQL, a language closely related to the SQL++ project. It highlights the limitations of traditional SQL in dealing with semi-structured data, such as JSON, commonly found in modern applications and NoSQL databases.

SQL++, and by extension PartiQL, addresses these challenges by extending SQL to handle both structured and semi-structured data seamlessly. This approach ensures compatibility with existing SQL knowledge while enabling queries on data without a fixed schema, bridging the gap between relational and NoSQL databases. The development of PartiQL reflects a strategic response to the evolving data management landscape, providing a comprehensive tool for efficiently querying and integrating diverse data formats.

## Tell me more

The need for a new SQL dialect like PartiQL arose from the evolving complexity of data management, particularly the challenges associated with querying and integrating data across diverse formats and storage systems. Traditional SQL languages were primarily designed for relational data models and struggled to efficiently handle nested, semi-structured, or schema-less data common in modern applications. Organizations required a solution that could seamlessly interact with traditional relational data and current data types without needing multiple query languages or complex data transformation processes.

PartiQL addresses these challenges by extending SQL to support these varied data formats, offering a unified query language that maintains SQL compatibility while introducing the flexibility to work with modern data architectures. This development reflects the need to simplify data management practices, enhance interoperability among different data systems, and leverage existing SQL knowledge in more complex and varied data environments.

The following is a simple SFW (Select-From-Where) PartiQL query:

```
SELECT e.id, e.name AS employeeName, e.title AS title
FROM hr.employees e
WHERE e.title = 'Dev Mgr'
```

## How do I get started?

To get started with PartiQL, follow these steps:

- **Explore Official Documentation:** Visit the PartiQL GitHub repositories [3][4], PartiQL website [1] and read PartiQL specification [5] to understand the language's capabilities, syntax, and supported features.
- **Install PartiQL Tools:** Using the PartiQL tutorial [6], set up the PartiQL command-line interface (CLI) or integrate PartiQL with your development environment to start executing queries.
- **Learn Through Examples:** Examine sample queries provided in the documentation to familiarize yourself with how PartiQL handles different data types and structures.
- **Experiment with AWS Services:** Utilize PartiQL with AWS services that support it, such as Amazon S3 Select, Amazon Redshift, and Amazon DynamoDB, to practice querying real data.
- **Join the Community:** Engage with the PartiQL community [7], share experiences, ask questions, and stay updated on new developments.
  This approach ensures a practical understanding of PartiQL, leveraging its full potential in data querying and management tasks.

## References

1. [PartiQL website](https://partiql.org)
2. [The SQL++ Query Language: Configurable, Unifying and Semi-structured](https://arxiv.org/pdf/1405.3631.pdf)
3. [PartiQL's Kotlin reference implementation](https://github.com/partiql/partiql-lang-kotlin)
4. [PartiQL's Rust reference implementation](https://github.com/partiql/partiql-lang-rust)
5. [PartiQL specification](https://partiql.org/assets/PartiQL-Specification.pdf)
6. [PartiQL tutorial](https://partiql.org/tutorial.html)
7. [PartiQL discussions](https://github.com/orgs/partiql/discussions)
8. [What is SQL++](https://sahays.github.io/database/2021/10/30/what-is-sql++.html)
