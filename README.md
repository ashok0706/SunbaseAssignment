
# Customer Management CRUD Application

This is a simple CRUD application for managing customer information with Spring Boot as the backend and basic HTML for the frontend.

## Getting Started

### Prerequisites

- Java 8 or later
- Maven
- MySQL
- SpringBoot
- Hibernat
- JSP pages

### Installation

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/ashok0706/SunbaseAssignment
    cd customer-management
    ```

2. **Backend Setup:**

    - Open `src/main/resources/application.properties` and configure your MySQL database settings.
    
    - Build and run the Spring Boot application:

        ```bash
        mvn spring-boot:run
        ```

3. **Frontend Setup:**

    - Navigate to the `frontend` directory:

        ```bash
        cd frontend
        ```

    - Install dependencies:

        ```bash
        npm install
        ```

    - Run the frontend:

        ```bash
        npm start
        ```

4. **Access the Application:**

    - Open your browser and go to [http://localhost:8080](http://localhost:8080)

## API Endpoints

### Create a Customer

- **Endpoint:** `/api/customers`
- **Method:** `POST`
- **Request Body:**
  
    ```json
    {
        "first_name": "Jane",
        "last_name": "Doe",
        "street": "Elvnu Street",
        "address": "H no 2",
        "city": "Delhi",
        "state": "Delhi",
        "email": "sam@gmail.com",
        "phone": "12345678"
    }
    ```

### Update a Customer

- **Endpoint:** `/api/customers/{customerId}`
- **Method:** `PUT`
- **Request Body:**

    ```json
    {
        "first_name": "Updated",
        "last_name": "Doe",
        "street": "Updated Street",
        "address": "Updated H no 2",
        "city": "Updated Delhi",
        "state": "Updated Delhi",
        "email": "updated@gmail.com",
        "phone": "87654321"
    }
    ```

### Get a List of Customers

- **Endpoint:** `/api/customers`
- **Method:** `GET`
- **Parameters:**
  - `page` (Pagination)
  - `size` (Pagination)
  - `sort` (Sorting)
  - `search` (Searching)

### Get a Single Customer

- **Endpoint:** `/api/customers/{customerId}`
- **Method:** `GET`

### Delete a Customer

- **Endpoint:** `/api/customers/{customerId}`
- **Method:** `DELETE`

### Authentication

  
    ```json
    {
        "login_id": ashok
        "password": 12345
    }
    ```

    The response will contain a Bearer token which you need to pass in subsequent API calls.


## Sync Data from Remote API

- **Endpoint:** `/api/sync`
- **Method:** `GET`

   This endpoint will call the remote API to fetch customer data and save/update it in your local database.

## Contributors

- Ashok Yelagndula

## License

This project is licensed under the [Your License] - see the [LICENSE.md](LICENSE.md) file for details.

## View pages

