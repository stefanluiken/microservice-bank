# microservice-bank
A simple bank, built with microservice architecture and containers.

Notes:

- We use Gradle for this project.
- We use the following Spring dependencies:
  - Web
  - Actuator
  - JPA
  - H2 Database (lightweight database, for testing purposes only)
  - Lombok

Tomcat will be started on localhost port 8080. After setting up the project, the accounts endpoint can be tested by making an api (e.g. postman) call to:

`http://localhost:8080/myAccount` with body 

`{
"customerId": "1"
}`

which should give output:

`
{
"accountNumber": 52341199,
"customerId": 1,
"accountType": "Savings",
"country": "Netherlands",
"branchAddress": "De Dam 1, Amsterdam",
"creationDate": "2022-10-18"
}
`
Database can be accessed through link `localhost:8080/h2-console`.

Cards microservice is accessible from server.port=9000.

http://localhost:9000/myCards

`
{
"customerId": "1"
}
`

`
[
{
"cardId": 1,
"customerId": 1,
"cardNumber": "4565XXXX4656",
"cardType": "Credit",
"totalLimit": 10000,
"amountUsed": 500,
"availableAmount": 9500,
"creationDate": "2022-10-18"
},
{
"cardId": 2,
"customerId": 1,
"cardNumber": "3455XXXX8673",
"cardType": "Credit",
"totalLimit": 7500,
"amountUsed": 600,
"availableAmount": 6900,
"creationDate": "2022-10-18"
},
{
"cardId": 3,
"customerId": 1,
"cardNumber": "2359XXXX9346",
"cardType": "Credit",
"totalLimit": 20000,
"amountUsed": 4000,
"availableAmount": 16000,
"creationDate": "2022-10-18"
}
]
`






Loans server.port=8090

http://localhost:8090/myLoans

`
{
"customerId": "1"
}
`

`
[
{
"loanNumber": 4,
"customerId": 1,
"startDate": "2022-06-18",
"loanType": "Personal",
"totalLoan": 10000,
"amountPaid": 3500,
"outstandingAmount": 6500,
"creationDate": "2022-06-18"
},
{
"loanNumber": 1,
"customerId": 1,
"startDate": "2022-02-10",
"loanType": "Home",
"totalLoan": 200000,
"amountPaid": 50000,
"outstandingAmount": 150000,
"creationDate": "2022-02-10"
},
{
"loanNumber": 2,
"customerId": 1,
"startDate": "2021-10-07",
"loanType": "Vehicle",
"totalLoan": 40000,
"amountPaid": 10000,
"outstandingAmount": 30000,
"creationDate": "2021-10-07"
},
{
"loanNumber": 3,
"customerId": 1,
"startDate": "2021-04-17",
"loanType": "Home",
"totalLoan": 50000,
"amountPaid": 10000,
"outstandingAmount": 40000,
"creationDate": "2021-04-17"
}
]
`