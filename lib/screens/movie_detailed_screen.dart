// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, override_on_non_overriding_member

import 'package:flutter/material.dart';
import '../model/movie_model.dart';

class MovieDetailScreen extends StatefulWidget {
  final Movie movie;
  const MovieDetailScreen({super.key, required this.movie});

  @override
  MovieDetailScreenState createState() => MovieDetailScreenState();
}

class MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// todo: put the back drop image with https://image.tmdb.org/t/p/original/${widget.movie.backDropPath}". Don't forget there is back button on the image of left top side.
              Stack(
                children: [
                  Container(
                    height: size.height * 0.45,
                    width: size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://image.tmdb.org/t/p/original/${widget.movie.backDropPath}",
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      // SizedBox(height: 20),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
        
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //// todo: put the title, released date, and overview
                    Row(
                      children: [
                        Text(
                          widget.movie.title,
                          style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "   ${widget.movie.releaseDate}",
                          style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 134, 134, 134)),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "${widget.movie.overview}",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
