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

6. Get all movie genres.
db.movies.distinct("genres")

7. Count the number of movies per genre.
db.movies.aggregate([ { $group: { _id: "$genres", count: { $sum: 1 } } }] )

8. Select the title and runtime of the longest movie.
db.movies.aggregate([ { $project: { title: 1, runtime: 1, _id:0 } }, { $sort: { runtime: -1 } }, { $limit: 1 }] )
