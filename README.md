# Kanye Loves Kanye - KLK

## Overview
Kanye Loves Kanye is the ultimate fan page dedicated to Kanye West enthusiasts. Users can explore a curated collection of Kanye-related items, create a profile to manage their collection, and receive motivational quotes and lyrics from Kanye. Additionally, users can participate in a survey to determine their "type of Ye" and potentially connect with other fans based on their profile information.

## Learning Objectives
- Develop logic components for survey handling and user profile management
- Implement functionality for adding, editing, and removing items from the user's collection
- Pass data and behaviors between components using props
- Implement page navigation and authentication for protected routes
- Collaborate effectively within a team to achieve project goals

## Features
- **User Authentication:** Users can sign up and log in, providing standard user information along with age and gender.
- **Survey:** Users can answer a survey to determine their "type of Ye" which categorizes them based on their answers.
- **Profile Management:** Users can edit their profile, view their categorized "type of Ye," and manage their collection of Kanye items.
- **Collection:** Users can browse a library of Kanye items and add them to their collection. They can also edit the quantity of items and remove them from their collection.
- **Inspiration Page:** Users can access a page to generate random Kanye quotes and lyrics for motivation.

## Database Schema
```sql
Table Users {
  id integer [primary key]
  username string
  email string
  password password
  age integer
  gender string
  typeOfYe string
}
```

Table Collection {
  id integer [primary key]
  user_id integer [ref: > Users.id]
  item string
  size string
}

## Setup Instructions

1. **Clone the repository:**
    ```bash
    git clone https://github.com/kanye-loves-kanye/capstone-backend-india-2023-klk.git
    ```

2. **Navigate to the repository:**
    ```bash
    cd capstone-backend-india-2023-klk
    ```

3. **Install dependencies:**
    ```bash
    yarn install
    ```

4. **Start the development server:**
    ```bash
    yarn start
    ```
## Usage

- Access the application through your browser at `http://localhost:3000`.
- Sign up or log in to start exploring Kanye-related content and managing your collection.

## Contributing

Contributions are welcome! If you'd like to contribute to this project, please follow these steps:

1. Fork the project.
2. Create your feature branch: `git checkout -b feature/YourFeature`.
3. Commit your changes: `git commit -am 'Add some feature'`.
4. Push to the branch: `git push origin feature/YourFeature`.
5. Submit a pull request.

## Troubleshooting

- If you encounter any issues, refer to the troubleshooting tips provided in the README or reach out to the project maintainers.

## Credits

This project was developed by [Your Name] and [Your Team Members] as part of [Project Name] at [Your Institution/Organization].

## License

This project is licensed under the [License Name] License - see the [LICENSE.md](LICENSE.md) file for details.
