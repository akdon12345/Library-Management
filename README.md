# Library Management System

A robust Java-based Library Management System built with Maven, SQLite database, and designed to run on Apache Tomcat server. The system provides different functionalities for administrators and regular users to manage library resources effectively.

## 🚀 Features

### Admin Features
- Manage Books (Add/Remove/Update)
- Manage Users (Add/Remove/Update)
- View all books and their status
- Track book loans and returns
- Generate reports

### User Features
- View available books
- Search books by title, author, or ISBN
- View personal loan history
- Check book availability

## 🛠️ Technical Stack

- **Java**: Core programming language
- **Maven**: Dependency management and build tool
- **SQLite**: Database management
- **Apache Tomcat**: Application server
- **Eclipse IDE**: Development environment

## 📋 Database Schema

### Tables
1. **Users**
   - id (PRIMARY KEY)
   - username (UNIQUE)
   - password
   - is_admin

2. **Books**
   - id (PRIMARY KEY)
   - title
   - author
   - isbn (UNIQUE)
   - available

3. **Loans**
   - id (PRIMARY KEY)
   - book_id (FOREIGN KEY)
   - user_id (FOREIGN KEY)
   - loan_date
   - return_date

## 🔧 Setup Instructions

1. **Prerequisites**
   - Java JDK 17 or higher
   - Maven 3.x
   - Eclipse IDE
   - Apache Tomcat 9.x or higher

2. **Database Setup**
   ```sql
   -- Database is automatically initialized on first run
   -- Default admin credentials:
   -- Username: admin
   -- Password: admin123
   ```

3. **Project Setup**
   ```bash
   # Clone the repository
   git clone [repository-url]

   # Navigate to project directory
   cd library-management

   # Build the project
   mvn clean install

   # Deploy to Tomcat
   # Copy the generated WAR file to Tomcat's webapps directory
   ```

## 🏗️ Project Structure

```
library-management/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/
│       │       └── library/
│       │           ├── dao/
│       │           │   ├── BookDAO.java
│       │           │   └── UserDAO.java
│       │           ├── model/
│       │           │   ├── Book.java
│       │           │   └── User.java
│       │           └── util/
│       │               └── DatabaseConnection.java
│       └── resources/
├── pom.xml
└── README.md
```

## 💻 Usage

1. **Admin Login**
   - Use default admin credentials to access admin panel
   - Manage books, users, and view system reports

2. **User Operations**
   - Register new account
   - Login with credentials
   - Browse and search books
   - View loan history

## 🔐 Security Features

- Password encryption for user accounts
- Session management
- Role-based access control
- Input validation and sanitization

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👥 Authors

- Your Name - *Initial work*

## 🙏 Acknowledgments

- Thanks to all contributors who have helped with the project
- Special thanks to the open-source community for providing excellent tools and libraries

## 📞 Support

For support and queries, please open an issue in the repository or contact the maintainers.

---
⭐️ If you found this project helpful, please give it a star!