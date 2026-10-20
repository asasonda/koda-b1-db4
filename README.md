```mermaid
erDiagram
    USER ||--|| ROLE : akun

    USER{
        int id PK
        varchar,NOTNULL username
        varchar,UNIQUE,NOTNULL email
        varchar password_hash
        varchar role_id FK
        varchar contact
    }

    ROLE{
        int id PK
        varchar role_name
    }
    

```
