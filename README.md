# Running migrations in a Neon-Rails project

This application is a simple Ruby on Rails project using the Neon Postgres database. It returns a list of authors and books written by them. We illustrate how to generate and run schema change migrations.

To build this project from scratch, check out the [guide in Neon's documentation](https://neon.tech/docs/guides/rails-migrations).

## Set up locally

You will need the following:
- A [Neon](https://neon.tech) account and a project
- Ruby 3.0 or higher

1. Clone this repository:

```bash
git clone https://github.com/neondatabase/guide-neon-rails
```

2. Navigate to the project directory and install the project dependencies:

```bash
cd guide-neon-rails
bundle install
```

3. Create a `.env` file in the root of the project and add the following environment variable with your Neon database URL:

```bash
DATABASE_URL=
```

4. Run the Rails database migrations:

```bash
rails db:migrate
```

5. Seed the database with sample data:

```bash
rails db:seed
```

6. Start the Rails server:

```bash
rails server
```

7. Visit `http://localhost:3000` in your browser to see the list of authors and books. Or use curl to see the html payload in your terminal:

```bash
# Page with the list of authors
curl http://localhost:3000/authors

# Page with the list of books by author with id 1
curl http://localhost:3000/books/1
```
