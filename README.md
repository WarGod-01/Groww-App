# Groww

A new Flutter project.

## Overview

Groww is a Flutter-based application that aims to provide users with a seamless and intuitive platform for managing their investments. The app features robust authentication mechanisms and a comprehensive Systematic Investment Plan (SIP) calculator, allowing users to calculate the maturity amount and total investment based on their preferences.

## Features

- **Authentication:** Secure login and registration system to protect user data.
- **SIP Calculator:** A tool for calculating the maturity amount and total investment for Systematic Investment Plans (SIPs).

### For using LogIn/SignUp Feature 
- you have to create a PostgreSQL server on Local System
- Open lib/main.dart  and change **home: Stockpage()** to **home: LoginScreen()**
- open lib/postgreSQL.SQL.dart and fill it with your Database name , User and Password
  ```bash
  final String databaseName = "DB Name";
  final String host = ''; // e.g., 'localhost' or 'your-db-host-url'
  final int port = 5432; // PostgreSQL default port
  final String username = 'your-username';
  final String password = 'your-password';
  ```

## Getting Started

This project serves as the starting point for developing a complete investment management application using Flutter.

### Prerequisites

- Flutter SDK: [Install Flutter](https://docs.flutter.dev/get-started/install)
- Dart: [Install Dart](https://dart.dev/get-dart)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/groww.git
   ```

2. Navigate to the project directory
  ```bash
  cd groww
  ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

## Resources
A few resources to get you started if this is your first Flutter project:

[Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
[Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
[Flutter Documentation](https://docs.flutter.dev/): Offers tutorials, samples, guidance on mobile development, and a full API reference.

