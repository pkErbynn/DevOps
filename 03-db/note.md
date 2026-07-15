## Databases
- Types
    1. Key-value Database
        - What?:
        - Pros: Very fast
        - Cons: No persistence + Just InMemory + Limited schema/storage + No Joins
        - BEST FOR: CACHING
        - Example: Redis, Memcached, etcd from K8s
        - Sample Data
            
            ```csharp
            key → value
            
            student:1001 → { name: "John", age: 21 }
            ```
            
            ```csharp
            // Student
            {
              "student:1001": {
                "name": "John Mensah",
                "age": 21,
                "program": "Computer Science",
                "level": 300
              },
              "student:1002": {
                "name": "Ama Boateng",
                "age": 22,
                "program": "Information Technology",
                "level": 400
              },
              "student:1003": {
                "name": "Kwame Osei",
                "age": 20,
                "program": "Mathematics",
                "level": 200
              }
            }
            
            // Session
            {
              "session:abc123": {
                "userId": "user:501",
                "username": "erbynn",
                "isLoggedIn": true,
                "expiresAt": "2026-05-09T18:00:00Z"
              },
              "session:def456": {
                "userId": "user:502",
                "username": "ama",
                "isLoggedIn": true,
                "expiresAt": "2026-05-09T19:00:00Z"
              }
            }
            
            // Product
            {
              "product:2001": {
                "name": "Laptop",
                "price": 850,
                "quantity": 12
              },
              "product:2002": {
                "name": "Mouse",
                "price": 25,
                "quantity": 100
              },
              "product:2003": {
                "name": "Keyboard",
                "price": 45,
                "quantity": 50
              }
            }
            ```
            
    2. Wide-Column Database
        - What?:
            - A noSql db where key points to a column family/group (a row in a table, having different columns)
            - **It** stores data in **rows and columns**, but unlike a normal relational database, each row does **not need to have the same columns**.
            - a more organized key-value database with many flexible columns.
            - new data is inserted with a timestamp. Updates don’t override/update existing data but are just like new data with the latest timestamp
            - same run sql commands on it
        - Pros: Large unstructured data + Unlimited complex schema + Scalable +
        - Cons: No Joins
        - BEST FOR: TIME-SERIES, IoT RECORDS, HISTORICAL DATA
        - Example: Casandra, Apache HBase
        - Sample Data
            
            ```csharp
            // A wide-column database is more structured:
            row key → column families → columns → values
            
            // example:
            student:1001
              profile:name → John
              profile:age → 21
              grades:dsa → A
              
            // Simple idea - Each row can have different columns.
            Row Key        Column Family        Columns
            student:1001   profile              name, age, program
            student:1001   grades               database, calculus, java
            student:1002   profile              name, age
            student:1002   attendance           week1, week2, week3
            
            // Student records - Notice that student:1001 has grades, but student:1002 has attendance.
            Row Key: student:1001
            
            Column Family: profile
              name      → John Mensah
              age       → 21
              program   → Computer Science
              level     → 300
            
            Column Family: grades
              database  → A
              calculus  → B+
              java      → A-
             
            
            Row Key: student:1002
            
            Column Family: profile
              name      → Ama Boateng
              age       → 22
              program   → Information Technology
            
            Column Family: attendance
              week1     → Present
              week2     → Present
              week3     → Absent
              
              
            // JSON-like sample data
            {
              "student:1001": {
                "profile": {
                  "name": "John Mensah",
                  "age": 21,
                  "program": "Computer Science",
                  "level": 300
                },
                "grades": {
                  "database": "A",
                  "calculus": "B+",
                  "java": "A-"
                }
              },
              "student:1002": {
                "profile": {
                  "name": "Ama Boateng",
                  "age": 22,
                  "program": "Information Technology"
                },
                "attendance": {
                  "week1": "Present",
                  "week2": "Present",
                  "week3": "Absent"
                }
              }
            }
            ```
            
    3. Document Db
        - What?
            - No sql general purpose db
            - no schema
            - no joins
            - demormalised thus data is duplicated across
        - Pros: Fast read
        - Cons: slow write/updates
        - Best For: Mobile Aps, Game apps, Content Mgmnt, Most Apps
        - Examples: Dynamo, MongoDB, Couch
    4. Relational Db
        - What?
            - For structured data where Schema is required upfront
            - Uses SQL since data is structured
            - has joins
            - Normalized to avoid duplicated data, using FK to jump/ref to other table
            - ACID compliant
                - No half changes are updated in db, all or non
            - Highly reliable
        - Cons: Difficult to scale
        - Example: Mysql, postgres
    5. Graph DB
        - What?
            - Reduces correlation of complex data
            - Directly connect to entities, no intermediate table to connect records/tables
            - No joins to connect records
            - Creates relationships between data and records
        - Best For: Graphs, Patterns, Social Media, Recommendation Engines
        - Example: Neo4J, DGraph
    6. Search Databases
        - What?
            - To search through huge amounts of data like Google search
            - Helps for full text search in an efficient and fast way
        - Examples: Elastic Search, Solr
- Wrap-Up
    - Mostly combined for usage
    - To store data: Relational/NoSql
    - To handle search: Search DB
    - To handle cache: KeyValue db