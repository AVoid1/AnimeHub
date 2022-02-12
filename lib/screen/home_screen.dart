import 'package:flutter/material.dart';
import 'package:anime/services/networking.dart';
import 'package:anime/services/anime.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Anime>> futureAnime;
  @override
  void initState() {
    super.initState();
    futureAnime = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Anime Hub')),
      ),
      body: Center(
          child: FutureBuilder<List<Anime>>(
        future: futureAnime,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                print(snapshot.data![index].title);
                return ListTile(
                  title: Text(snapshot.data![index].title),
                  trailing: Text(snapshot.data![index].status),
                  subtitle: Text(snapshot.data![index].id),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      )),
    );
  }
}
