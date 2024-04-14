# ecommerce-microservices-backend

<img src="https://github.com/ErvinC256/ecommerce-microservices-backend/assets/149756489/31b77ae6-bcc7-497c-a0fd-a765616cb05a" width="75%">
<br><br>
<img src="https://github.com/ErvinC256/ecommerce-microservices-backend/assets/149756489/599da99d-fd54-48f1-8de6-e288bea2a357" width="75%">
<br><br>
<img src="https://github.com/ErvinC256/ecommerce-microservices-backend/assets/149756489/8538cc3e-0fa4-4bf3-a382-d4cd957e2cd0" width="75%">

### Main Features:
- Enhanced Product Search
- Order Placement & Payment
- Account Management
- Order Handling
- Inventory Management

---

### Prerequisites:

#### Local:
- [Oracle](https://www.oracle.com/my/database/technologies/xe-downloads.html) installed
- [RabbitMQ](https://www.rabbitmq.com/docs/download) installed

#### Docker:
- [Docker](https://www.docker.com/products/docker-desktop/) installed

---

### To Run:

#### Local:
1. **Create Schemas in Oracle Database:**
   - Create 5 schemas named `user-service`, `product-service`, `cart-service`, `order-service`, `inventory-service` within a PDB named `XEPDB1` within Oracle database, with password set to `password`.
  
2. **Run Microservices Using Maven:**
   - Navigate to each microservice project folder.
   - Run each microservice project using Maven:
     ```bash
     mvn spring-boot:run
     ```

#### Docker:
1. **Run Docker Compose:**
   - Navigate to the parent project folder.
   - Run Docker Compose:
     ```bash
     docker-compose up
     ```



