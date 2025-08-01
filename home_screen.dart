import 'package:flutter/material.dart';
import 'movie_detail.dart';
import 'package:cached_network_image/cached_network_image.dart';
// Adjust the import based on your project structure
 // Ensure this import matches your project structure  
// Import the API service to fetch recommendations

class DarkMoviesApp extends StatelessWidget {
  DarkMoviesApp({super.key});
  final List<Map<String, dynamic>> movies = [
    {
      "title": "Inception",
      "summary": "A thief enters dreams to steal secrets.",
      "image_url": "https://image.tmdb.org/t/p/w500/qmDpIHrmpJINaRKAfWQfftjCdyi.jpg"
    },
    {
      "title": "The Batman",
      "summary": "Batman fights crime and corruption in Gotham.",
      "image_url": "https://image.tmdb.org/t/p/w500/74xTEgt7R36Fpooo50r9T25onhq.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DarkMovies")),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          var movie = movies[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: CachedNetworkImage(
                imageUrl: movie['image_url'],
                width: 50,
                height: 50,
                fit: BoxFit.cover,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              title: Text(movie['title']),
              subtitle: Text(movie['summary']),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MovieDetail(movieTitle: movie['title']),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}