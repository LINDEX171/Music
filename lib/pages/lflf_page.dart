import 'package:flutter/material.dart';
import 'package:lastmusicapp/components/my_drawer.dart';
import 'package:lastmusicapp/models/playlist_provider.dart';
import 'package:lastmusicapp/models/song.dart';
import 'package:lastmusicapp/pages/song_page.dart';
import 'package:provider/provider.dart';

class LflfPage extends StatefulWidget {
  const LflfPage({super.key});

  @override
  State<LflfPage> createState() => _HomePageState();
}

class _HomePageState extends State<LflfPage> {
  late final dynamic playlistProvider;

  @override
  void initState() {
    super.initState();
    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

  void goToSong(int songIndex) {
    playlistProvider.currentSongIndex = songIndex;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>const SongPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title:  Text("Lepp Fii Lañu Fekk",  style: TextStyle(
        fontSize: 24.0, // Taille du texte
        fontWeight: FontWeight.bold, // Poids de la police
        shadows: [
          Shadow(
            color: Colors.black.withOpacity(0.5),
            offset: Offset(2, 2),
            blurRadius: 2,
          ),
        ],
        
      ),
      ),
        leading: IconButton( // Ajouter un bouton de retour
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
      ),
      drawer: const MyDrawer(),
      body: Consumer<PlaylistProvider>(
        builder: (context, value, child) {
          final List<Song> playlist = value.playlist;
          // Créer un map pour regrouper les chansons par album
          Map<String, List<Song>> songsByAlbum = {};

          // Remplir le map avec les chansons
          for (Song song in playlist) {
            if (!songsByAlbum.containsKey(song.albumName)) {
              songsByAlbum[song.albumName] = [];
            }
            songsByAlbum[song.albumName]!.add(song);
          }

String albumName = songsByAlbum.keys.elementAt(0); // Accède au 1er album dans la liste des clés.

return ListView.builder(
  itemCount: songsByAlbum[albumName]?.length ?? 0,
  itemBuilder: (context, index) {
    var song = songsByAlbum[albumName]![index];
    return ListTile(
      title: Text(song.songName),
      subtitle: Text(song.artistName),
      leading: Image.asset(song.albumArtImagePath),
      onTap: () => goToSong(playlist.indexOf(song)),
    );
  },
);



        },
      ),
    );
  }
}
