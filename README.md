# Ruby Application Deployed on Heroku with Puma

This project is a Ruby web application designed to be deployed on Heroku. It uses Puma as the web server, and is configured to automatically start and serve requests on Heroku.

## Project Setup

### Prerequisites

- **Ruby** (version 3.1.0 or compatible)
- **Bundler** (for managing gem dependencies)
- **Heroku CLI** (for deploying and managing the application)

### Local Installation

To set up and run this application locally, follow these steps:

1. **Clone the repository:**

    ```bash
    git clone https://github.com/esedgarcia/a-ruby.git
    cd a-ruby
    ```

2. **Install dependencies:**

    Make sure `bundler` is installed. If not, run:

    ```bash
    gem install bundler
    ```

    Then, install the required gems:

    ```bash
    bundle install
    ```


1. **Login to Heroku:**

    ```bash
    heroku login
    ```

2. **Create a new Heroku app (if not already created):**

    ```bash
    heroku create a-ruby
    ```

3. **Push the code to Heroku:**

    ```bash
    git push heroku main
    ```

4. **Check the app status:**

    You can verify if the app is running successfully by checking the logs:

    ```bash
    heroku logs --tail --app a-ruby
    ```

### Procfile Configuration

The project uses a `Procfile` to specify how the app should be run on Heroku. Make sure your `Procfile` includes the following line:

```plaintext
web: bundle exec puma -p $PORT
