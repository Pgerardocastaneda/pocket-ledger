# Finance Tracker: Design

## Data model

### users
- id
- email
- customization
    - color, theme, fonts

## API

| Method | Path | What it does |
|---|---|---|
| GET |/api/accounts | List the logged-in user's accounts |

## Pages

- **Login**: ...
- **Dashboard**: 
    - See upcoming bills
    - Net worth last 3 months
    - Income last 6 months
    - Spend last 3 months
    - recent transactions
    - Saving goals
    - Account Balances

- **Bills & Income**:
    - Income
        - Range/Exact amount
        - Rate: Weekly, Bi-weekly, Monthly, etc...
    - Bills
        - Utilities
        - Recurring Payments
        - Loans
- **Accounts**:
    - Banks
    - Savings
        - Regular Savings
        - High Yield Savings
            - Predicted growth over time
        - Saving Plan for xyz purpose
    - Credit Cards
        - Available Credit Balance
        - Credit Debt
- **Spending**:
    -