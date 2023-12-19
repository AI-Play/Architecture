# Project Requirements

List of requirements for each part such as Frontend, Backend, and Database.

## Frontend

- Should be responsive for mobile use.
- When the user adds/edits/deletes ML functionality elements during service use, only the relevant part should change -> UI Component approach.
- It should allow rearrangement of functional elements (Drag & Drop, Button to switch, ...).
- No need for content exposure on the web app itself (no SEO concerns) -> CSR
  - Separate website for service introduction, guidance, sign-up, and login (SEO required).

## Backend

- Must operate and return results through APIs.
- ML functionalities should operate asynchronously.
- Python-based for ML functionalities.
  - Considering most functionalities will be implemented with Lambda, the backend server doesn't necessarily have to be Python-based.
  - However, model training functionality cannot be uploaded due to Lambda's time limit (15 minutes).
  - Hence, a solution is needed for providing model training functionality. Deciding whether to proceed with Python or explore other options is necessary.
- Requires resource distribution for simultaneous service use by multiple users.
  - No need to worry about resource distribution for functionalities provided by Lambda (they operate as needed and disappear upon completion).
  - The challenge lies in providing model training functionality -> AWS Fargate + AWS ECS(or EKS) will be used.
- Needs logging of user service usage time (structured).
- Requires logging of the number of times each functionality is used (structured).
- Needs storage of user's ML project information (unstructured).
- Requires storage of files uploaded by the user (using S3).
- Requires storage of models created by the user (using S3).

## Database

- Should be cloud-based (Complete separation of Front / Back / DB is desired).
- Should not incur costs for commercial use (to avoid disputes when adding paid features to the service).
- Should have sufficient references from both official documentation and the community for practical learning purposes.
- Needs both structured (SQL) and unstructured (NoSQL) databases since stored data includes both types.
- (If cloud-based) Should not incur costs as long as the usage is within limits for an extended period (over 1 year).
- Database Schema

  - User (user) - SQL:

    - Unique ID (idx): int (auto-increment) **PK**
    - Email (email): string
    - Password (pw): string (hashed)
    - Nickname (nickname): string
    - Membership type (membership): int
    - Last access time (last_in): datetime
    - Join time (created_at): datetime (auto)

  - User service usage time + Function usage count check (func_log) - SQL:

    - User's unique ID (user_idx): int (auto-increment) **FK**
    - Function's unique value (func_code): string
    - Whether it worked normally (is_worked): boolean (0 | 1)
    - Start time of operation (start_time): datetime
    - End time of operation (end_time): datetime
    - Creation time (created_at): datetime (auto)

  - ML project information (ml_project) - SQL:

    - Unique ID (idx): int **PK**
    - User's unique ID (user_idx): int **FK**
    - Project name (proj_name): string
    - Last modification time (last_update): datetime
    - Creation time (created_at): datetime (auto)

  - ML model information (ml_model) - SQL:

    - Unique ID (idx): int **PK**
    - User's unique ID (user_idx): int **FK**
    - Model name (model_name): string
    - Last modification time (last_update): datetime
    - Creation time (created_at): datetime (auto)

  - ML project structure (ml_proj_structure) - NoSQL:

    - User's ID (user_idx): int
    - Project's ID (proj_idx): int
    - Work blocks (blocks):
      - Work block ID - int:
        - Data preparation (EDA, preprocessing) part (preprocess):
          - Function name:
            - Function item: Item value
            - Function item: Item value
            - ...
          - Function name:
            - Function item: Item value
            - Function item: Item value
            - ...
          - ...
        - Model creation part (train):
          - Function name:
            - Function item: Item value
            - Function item: Item value
            - ...
          - Function name:
            - Function item: Item value
            - Function item: Item value
            - ...
          - ...
        - Model evaluation part (eval):
          - Function name:
            - Function item: Item value
            - Function item: Item value
            - ...
          - Function name:
            - Function item: Item value
            - Function item: Item value
            - ...
      - ...

  - Chat message records (chat_log) - **SQL or NoSQL (to be discussed)**:
    - User's ID (user_idx): int
    - Nickname (user_nick): string
    - Message content (content): string
    - Creation time (created_at): datetime (auto)

## etc.

- Send a notification to the user's email when model training is completed.
