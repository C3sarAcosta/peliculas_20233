import 'package:flutter/material.dart';
import 'package:peliculas_20233/providers/movies_provider.dart';
import 'package:peliculas_20233/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Colocamos la instancia de MoviesProvider
    final moviesProvider = Provider.of<MoviesProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
          )
        ],
        title: const Center(
          child: Text('Peliculas en cine'),
        ),
      ),
      body: Column(
        children: [
          CardSwiper(
            movies: moviesProvider.onDisplayMovies,
          ),
          MovieSlider()
        ],
      ),
    );
  }
}
