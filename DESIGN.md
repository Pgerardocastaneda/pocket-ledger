# Pocket Ledger: Design

## Data model

- Store whole cents as integers, avoids rounding errors from decial numbers

### users
| Column | Type | Notes |
|---|---|---|
| id | integer | primary key |
| email | text | unique: no two users share one |
| password_hash | text | |


### accounts

| Column | Type | Notes |
|---|---|---|
| user_id | integer | primary key |
| type | text | |
| name | text | |
|starting_balance | integer | |
| current_balance | integer | |
| credit | integer | limit for available funds |

### transactions

| Column | Type | Notes |
|---|---|---|
| account_id|integer|primary key|
| cost | integer ||
| date | DATE||
|categroty| text ||




## API

| Method | Path | What it does |
|---|---|---|
| GET |/api/accounts | List the logged-in user's accounts |
| POST |/api/accounts | create account |
| PATCH |/api/accounts/:id | edit one |
| DELETE |/api/accounts/:id | delete one |
| GET |/api/transactions | List the logged-in user's transactions |
| POST |/api/transactions | create transaction |
| PATCH |/api/transactions/:id | edit one |
| DELETE |/api/transactions/:id | delete one |
| POST |/api/auth/signup | create user account |
| POST |/api/auth/login | log into existing account |
| POST |/api/auth/logout | log out of account |
| DELETE |/api/me/ | delete exisiting account |
| PATCH |/api/me | edit existing account details |

## Pages

- **Login**: ...
- **Dashboard**: 
    - Recent transactions
    - One month's spending
    - Balances
- **Accounts**:
    - Banks
    - Credit Cards
        - Available Credit Balance
    - Account table

| Type | Name | Balance |
|---|---|---|        
| Bank | Wells Fargo | $00.00 |

    
- **Later**: 

    - **Bills & Income**:
        - Income
            - Range/Exact amount
            - Rate: Weekly, Bi-weekly, Monthly, etc...
        - Bills
            - Utilities
            - Recurring Payments
            - Loans
        - Savings
                - Regular Savings
                - High Yield Savings
                    - Predicted growth over time
                - Saving Plan for xyz purpose
    - customization
        - color, theme, fonts
    - transfer between accounts