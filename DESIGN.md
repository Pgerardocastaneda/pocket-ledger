# Finance Tracker: Design

## Data model



### users
- id
- email
- password_hash

### accounts
- account holder
- type
- name
- balance
- credit limit for cards

### transactions
- which account
- amount
- the date
- category
- description
- deposit or widthdrawl
- transfer between accounts


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
| GET |/api/auth/login | log into existing account
| DELETE |/api/auth/delete | delete exsiting account |
| PATCH |/api/auth/edit | edit existing account details |

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

    - Store whole cents as integers
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