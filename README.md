# SimpleApp

Welcome to SimpleApp! This project is a simple Ruby application where I learned the basics of Ruby by creating a user system, implementing microposts, and connecting everything from scratch without using any external gems.

## Table of Contents
- [SimpleApp](#simpleapp)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Features](#features)
  - [Getting Started](#getting-started)
    - [Installation](#installation)
  - [Usage](#usage)
    - [User Registration](#user-registration)
    - [Creating Microposts](#creating-microposts)
    - [Viewing Microposts](#viewing-microposts)
  - [Code Overview](#code-overview)
  - [Future Improvements](#future-improvements)

## Introduction

This project serves as my introduction to Ruby programming. The primary goal was to build a basic user management system and a micropost feature where users can create posts. All functionality has been implemented using pure Ruby, without relying on any external libraries or gems. The project is inspired by the Ruby on Rails tutorial by Michael Hartl.

## Features

- User registration (Sign Up)
- Create, read, update, and delete (CRUD) operations for microposts
- Simple user interface in the command line

## Getting Started

To get started with this project, you need to have Ruby installed on your machine. You can download Ruby from the official [Ruby website](https://www.ruby-lang.org/en/downloads/).

### Installation

1. Clone the repository to your local machine:

```bash
git clone https://github.com/elaqaz/SimpleApp.git
```

2. Navigate to the project directory:

```bash
cd SimpleApp
```

3. Run the application:

```bash
ruby main.rb
```

## Usage

After running `main.rb`, you will be presented with a command-line interface where you can register a new user, create microposts, view microposts, and perform other CRUD operations.

### User Registration

To register a new user, follow the prompts after selecting the "Sign Up" option from the main menu.

### Creating Microposts

Once registered, you can create a new micropost by selecting the "Create Micropost" option and following the prompts.

### Viewing Microposts

You can view all microposts or your own microposts by selecting the appropriate options from the main menu.

## Code Overview

Here's a brief overview of the structure of the project and some key files:

- `main.rb`: The entry point of the application. It handles user inputs and coordinates the flow of the application.
- `user.rb`: Contains the `User` class with methods for user registration and profile management.
- `micropost.rb`: Contains the `Micropost` class with methods for creating, reading, updating, and deleting microposts.

## Future Improvements

- Implement user authentication (log in).
- Implement a more secure password storage mechanism (e.g., hashing).
- Add validations for user input.
- Improve the user interface for better user experience.
- Implement persistent storage (e.g., using a database).