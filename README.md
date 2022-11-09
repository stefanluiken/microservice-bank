# microservice-bank
A simple bank, built with microservice architecture and containers.

![](microservice-bank.jpg)

Notes:

- We use Java 17.
- We use SpringBoot 2.7.4
- We use Gradle.
- We use the following Spring dependencies:
  - Web
  - Actuator
  - JPA
  - H2 Database (lightweight database, for testing purposes only)
  - Lombok

We have three microservices, that can run independently of each other:

1) **Accounts**

The Accounts microservice is where we interact/store the accounts of our users. Tomcat starts from localhost port 8080. 
After setting up the project, the `myAccount` endpoint can be tested by making a POST API (e.g. with Postman) to:

`http://localhost:8080/myAccount`, with request body:

```json
{
  "customerId": "1"
}
```

which should return output:

```json
{
  "accountNumber": 52341199,
  "customerId": 1,
  "accountType": "Savings",
  "country": "Netherlands",
  "branchAddress": "De Dam 1, Amsterdam",
  "creationDate": "2022-10-18"
}
```

The Account microservice's database can be accessed through `localhost:8080/h2-console`.


2. **Loans**

The Loans microservice is where we interact/store the loan information of our users.
This microservice is accessible from server.port=8090.

<details>
<summary>API testing details</summary>

After setting up the project, the `myLoans` endpoint can be tested by making a POST API (e.g. with Postman) to:

`http://localhost:8090/myLoans`, with request body:

```json
{
  "customerId": "1"
}
```

which should return output:

```json
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
```

</details>

3. **Cards**

The Cards microservice is where we interact/store the card information of our users (be careful, never expose full card numbers!).
This microservice is accessible from server.port=9000.

<details>
<summary>API testing details</summary>

After setting up the project, the `myCards` endpoint can be tested by making a POST API (e.g. with Postman) to:

`http://localhost:9000/myCards`, with request body:

```json
{
  "customerId": "1"
}
```

which should return output:

```json
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
```

</details>

After installing Docker, a Docker image can be created by executing the following commands (example for the accounts microservice):

```
./gradlew build
```

Then, building the image:

```
docker build . -t microservicebank/accounts
```

Then, running the image:

```
docker run -p 8080:8080 microservicebank/accounts
```

The following command should show the instances that run:

```
docker ps
```







