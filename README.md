Week 10 Bank Tech Test


User Stories

```
As a client,
I would like to be able to deposit money into my bank account.
```

```
As a client,
I would like to be able to withdraw money from my bank account.
```

```
As a client,
so that I know how much money I have,
I want to view my account balance.
```

```
As a client,
I would like to see the transaction dates.
```

```
As a client,
so that I can see the most relevant information first,
I want to view my transaction history in reverse chronological order.
```
<img width="842" alt="Screenshot 2021-09-02 at 00 21 13" src="https://user-images.githubusercontent.com/81044352/131757974-5af1f036-46a6-4ed2-8f6e-d7fb0c59947c.png">

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
