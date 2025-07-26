# School Database Visualized

A full-stack app for visualizing a school database with a React frontend and Node.js/Express backend using MariaDB/MySQL.

---

## Prerequisites

- **Node.js** (v18+ recommended)
- **npm** (comes with Node.js)
- **MariaDB** or **MySQL**
- **Git** (optional, for cloning)

---

## Setup Instructions

### macOS

1. **Install Homebrew (if not already installed):**
   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. **Install dependencies:**
   ```sh
   brew install node mariadb
   ```

3. **Start MariaDB:**
   ```sh
   brew services start mariadb
   ```

4. **Set up the database:**
   ```sh
   mysql -u root -p < /Users/ice/Desktop/school-database-visualized/backend/db/init.sql
   ```
   (Enter your MariaDB root password. If you haven't set one, just press Enter.)

5. **Install backend and frontend dependencies:**
   ```sh
   cd /Users/ice/Desktop/school-database-visualized/backend
   npm install
   cd ../frontend
   npm install
   ```

6. **Start the backend server:**
   ```sh
   cd /Users/ice/Desktop/school-database-visualized/backend
   node server.js
   ```

7. **Start the frontend dev server:**
   ```sh
   cd /Users/ice/Desktop/school-database-visualized/frontend
   npm run dev
   ```

8. **Open your browser:**
   - Go to [http://localhost:5173/](http://localhost:5173/)

---

### Windows

1. **Install [Node.js](https://nodejs.org/)**
2. **Install [MariaDB](https://mariadb.org/download/)** or [MySQL](https://dev.mysql.com/downloads/installer/)
3. **Add MariaDB/MySQL to your PATH** (if not done by installer)
4. **Open Command Prompt or PowerShell**

5. **Set up the database:**
   ```sh
   mysql -u root -p < C:\Users\<YourUser>\Desktop\school-database-visualized\backend\db\init.sql
   ```
   (Enter your MariaDB/MySQL root password.)

6. **Install backend and frontend dependencies:**
   ```sh
   cd C:\Users\<YourUser>\Desktop\school-database-visualized\backend
   npm install
   cd ..\frontend
   npm install
   ```

7. **Start the backend server:**
   ```sh
   cd C:\Users\<YourUser>\Desktop\school-database-visualized\backend
   node server.js
   ```

8. **Start the frontend dev server:**
   ```sh
   cd C:\Users\<YourUser>\Desktop\school-database-visualized\frontend
   npm run dev
   ```

9. **Open your browser:**
   - Go to [http://localhost:5173/](http://localhost:5173/)

---

## Troubleshooting

- If you get `Access denied for user 'root'@'localhost'`, you may need to reset your MariaDB/MySQL root password.
- Make sure MariaDB/MySQL is running before importing the SQL or starting the backend.
- If you see empty tables, re-run the SQL file to seed the database.

---

## Project Structure

- `backend/` — Node.js/Express API server
- `frontend/` — React + Vite frontend
- `backend/db/init.sql` — SQL schema and sample data

---

## License

MIT
