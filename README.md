Week 10 Bank Tech Test

###User Stories

```
As a client, I would like to be deposit money into my account.
```

```
As a client, I would like to withdraw money from my account.
```

```
As a client, I want to view my balance.
```

```
As a client, I want to view my transaction history in reverse chronological order so that it shows me the most relevant information first.
```

### Example:

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
