# ecommerce-microservices-backend
**currently working on OAuth social login

<img src="https://github.com/ErvinC256/ecommerce-microservices-backend/assets/149756489/31b77ae6-bcc7-497c-a0fd-a765616cb05a" width="75%">
<br><br>
<img src="https://github.com/ErvinC256/ecommerce-microservices-backend/assets/149756489/599da99d-fd54-48f1-8de6-e288bea2a357" width="75%">
<br><br>
<img src="https://github.com/ErvinC256/ecommerce-microservices-backend/assets/149756489/8538cc3e-0fa4-4bf3-a382-d4cd957e2cd0" width="75%">

### 1. Main Features:
- Enhanced Product Search
- Order Placement & Payment
- Account Management
- Order Handling
- Inventory Management

---

### 2. Prerequisites:

#### Local:
- [Oracle](https://www.oracle.com/my/database/technologies/xe-downloads.html) installed
- [RabbitMQ](https://www.rabbitmq.com/docs/download) installed

#### Docker:
- [Docker](https://www.docker.com/products/docker-desktop/) installed

---

### 3. To Run:

#### Local (for each project: use application-dev.properties, use Oracle syntax in data.sql, use Oracle dependency in pom.xml):
1. **Create Schemas in Oracle Database:**
   - Create 5 schemas named `user-service`, `product-service`, `cart-service`, `order-service`, `inventory-service` within a PDB named `XEPDB1` within Oracle database, with password set to `password`.
  
2. **Run Microservices Using Maven:**
   - Navigate to each microservice project folder.
   - Run each microservice project using Maven:
     ```bash
     mvn spring-boot:run
     ```

#### Docker (for each project: use application-prod.properties, use MySQL syntax in data.sql, use MySQL dependency in pom.xml):

1. **Rebuild .jar Files:**
   - Before running Docker Compose, ensure that .jar files for each microservice are up-to-date. Navigate to each microservice project folder and run:
     ```bash
     mvn clean package
     ```

2. **Run Docker Compose:**
   - Navigate to the parent project folder.
   - Run Docker Compose:
     ```bash
     docker-compose up
     ```
     
---

### 4. References:

- PayPal Integration
   - [https://developer.paypal.com/docs/checkout/standard/integrate/](https://developer.paypal.com/docs/checkout/standard/integrate/)

---

- Frontend application at [https://github.com/ErvinC256/ecommerce-microservices-frontend/tree/main](https://github.com/ErvinC256/ecommerce-microservices-frontend/tree/main)


