# NoSQL

1. Find all movies directed by Steven Spielberg.
db.movies.find({directors: { $in: ["Steven Spielberg"] }})

2. Count all comments.
db.comments.countDocuments()

3. Find all movies directed by Steven Spielberg, and only return the title and year.
db.movies.find({directors: { $in: ["Steven Spielberg"] }}, {title:1, year:1})

4. Find all movies directed by Steven Spielberg, sorted by release year in descending order.
db.movies.find({directors: { $in: ["Steven Spielberg"] }}).sort({year:-1})

5. Find the title and the year of first 5 movies directed by Steven Spielberg.
db.movies.find({directors: { $in: ["Steven Spielberg"] }}, {title:1, year:1}).sort({year:1}).limit(5)

