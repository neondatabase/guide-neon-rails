# Find or create authors
authors_data = [
  {
    name: "J.R.R. Tolkien",
    bio: "The creator of Middle-earth and author of The Lord of the Rings.",
    country: "United Kingdom"
  },
  {
    name: "George R.R. Martin",
    bio: "The author of the epic fantasy series A Song of Ice and Fire.",
    country: "United States"
  },
  {
    name: "J.K. Rowling",
    bio: "The creator of the Harry Potter series.",
    country: "United Kingdom"
  }
]

authors_data.each do |author_attrs|
  author = Author.find_or_initialize_by(name: author_attrs[:name])
  author.assign_attributes(author_attrs)
  author.save if author.changed?
end

# Find or create books
books_data = [
  { title: "The Fellowship of the Ring", author_name: "J.R.R. Tolkien" },
  { title: "The Two Towers", author_name: "J.R.R. Tolkien" },
  { title: "The Return of the King", author_name: "J.R.R. Tolkien" },
  { title: "A Game of Thrones", author_name: "George R.R. Martin" },
  { title: "A Clash of Kings", author_name: "George R.R. Martin" },
  { title: "Harry Potter and the Philosopher's Stone", author_name: "J.K. Rowling" },
  { title: "Harry Potter and the Chamber of Secrets", author_name: "J.K. Rowling" }
]

books_data.each do |book_attrs|
  author = Author.find_by(name: book_attrs[:author_name])
  Book.find_or_create_by(title: book_attrs[:title], author: author)
end