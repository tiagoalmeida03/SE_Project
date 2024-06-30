workspace {

    model {
        user = person "User" {
            description "User of the system interacting through the frontend."
        }

        system = softwareSystem "QuirckedUp Software" {
            description "Allows users to create and solve tests."

            frontend = container "Frontend" {
                description "Frontend application for users to place orders."
                technology "React"
                url "http://localhost:3000/"
                tags "Frontend"

                // Components of the Frontend
                orderComponent = component "Order Component" {
                    description "Allows users to create orders."
                    technology "React Component"
                    tags "Component"
                    user -> this "Interacts with"
                }

                authComponent = component "Authentication Component" {
                    description "Handles user authentication and authorization."
                    technology "React Component"
                    tags "Component"
                }

                // ... other components

                user -> orderComponent "Uses"
            }

            backend = container "Backend" {
                description "A backend service tailored to the needs of the frontend."
                technology "django"
                url "http://localhost:8080/"
                tags "Backend"

                // Components of the Backend
                orderController = component "Order Controller" {
                    description "Processes order creation requests."
                    technology "Django REST Framework Controller"
                    tags "Component"
                    frontend -> this "Sends order data to"
                }

                authController = component "Authentication Controller" {
                    description "Manages authentication and authorization."
                    technology "Django REST Framework Controller"
                    tags "Component"
                    frontend -> this "Sends auth requests to"
                }

                // ... other components

                orderComponent -> orderController "Creates order with"
                authComponent -> authController "Authenticates via"
            }

            db = container "Database" {
                description "Stores all persistent data."
                technology "SQLite3"
                tags "Database"

                // Components within the Database (Typically not broken down at Level 3)
                // But can include tables or schemas if needed

                backend -> this "Reads from and writes to"
            }
        }
    }

    views {
        // Updated views to include components
        systemContext system {
            include *
            autolayout lr
        }

        container system {
            include *
            autolayout lr
        }

        // Component view for the Frontend
        component frontend {
            include *
            autolayout lr
        }

        // Component view for the Backend
        component backend {
            include *
            autolayout lr
        }

        theme default
    }

}
