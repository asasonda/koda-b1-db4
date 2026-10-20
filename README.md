```mermaid
erDiagram
    USER ||--|| ROLE : akun
    EMPLOYEE ||--|| ROLE : akun

    USER{
        int id PK
        varchar,NOTNULL username
        varchar,UNIQUE,NOTNULL email
        varchar password_hash
        varchar,NOTNULL first_name
        varchar,NOTNULL last_name
        int role_id FK
        int employee FK
        varchar contact
    }

    ROLE{
        int id PK
        varchar role_name
    }

    EMPLOYEE{
        int id PK
        varchar,UNIQUE,NOTNULL NIP
        varchar,NOTNULL gelar
    }
```
