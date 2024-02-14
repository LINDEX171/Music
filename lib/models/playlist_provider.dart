import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lastmusicapp/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
//playist of songs
  final List<Song> _playlist = [
    Song(
      songName: "Intro",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/Intro.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "40e Jour",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/40e.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "Ñafal",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/Gnafal.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "Jëli li des",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/Jelilides.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "Top 5",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/Top5.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "Sunshine",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/Sunshine.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "Destin",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/Destin.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "Doon benn",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/Doonbenn.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "Sama Nigga",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/Samanigga.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "Dee Ci Yaw",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/Deeciyaw.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "Homie",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/Homie.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "Wàccna pare wàccogyén",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/Wnpwy.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "Seetu",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/Seetu.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "Ci naka",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/Cinaka.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "U know the vibe",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/Uktv.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "Suba",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/Suba.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "Tefess",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/Tefess.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "Ñetti at ci ren",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lflf.jpeg",
      audioPath: "audio/lflf/Gnettiatciren.mp3",
      albumName: "LFLF", // Ajoutez l'album ici
    ),
    Song(
      songName: "Nguur",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Nguur.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "Reunion",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Reunion.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "Jourduseigneur",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Jourduseigneur.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "Boroom Bi",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Borombii.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "Waawaw",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Waawaw.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "Kmnd",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Kmnd.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "Deeinterlude",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Deeinterlude.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "Family",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Family.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "LGT",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Lgt.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "Divorce",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Divorce.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "LYXRD",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Lyxrd.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "Life",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Life.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "Jaar Jaar",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Jaarjaar.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "Bad Man",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Badman.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "Nightmare",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Nightmare.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "LNN",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Lnn.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "Born Sinner(interlude)",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Bornsinner.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "Guddi",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Guddi.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "FYN",
      artistName: "DIP",
      albumArtImagePath: "assets/images/lnn.jpeg",
      audioPath: "audio/lnn/Fyn.mp3",
      albumName: "LNN", // Ajoutez l'album ici
    ),
    Song(
      songName: "Holaucoste",
      artistName: "DIP",
      albumArtImagePath: "assets/images/tlk.jpg",
      audioPath: "audio/tlk/Holocauste.mp3",
      albumName: "TLK", // Ajoutez l'album ici
    ),
    Song(
      songName: "Damako Khar",
      artistName: "DIP",
      albumArtImagePath: "assets/images/tlk.jpg",
      audioPath: "audio/tlk/Damakokhar.mp3",
      albumName: "TLK", // Ajoutez l'album ici
    ),
    Song(
      songName: "Dou Raggal Dou Respect",
      artistName: "DIP",
      albumArtImagePath: "assets/images/tlk.jpg",
      audioPath: "audio/tlk/Douraggal.mp3",
      albumName: "TLK", // Ajoutez l'album ici
    ),
    Song(
      songName: "Niata la yalla fay sa khol",
      artistName: "DIP",
      albumArtImagePath: "assets/images/tlk.jpg",
      audioPath: "audio/tlk/Nlyfsx.mp3",
      albumName: "TLK", // Ajoutez l'album ici
    ),
    Song(
      songName: "Bandit",
      artistName: "DIP",
      albumArtImagePath: "assets/images/tlk.jpg",
      audioPath: "audio/tlk/Bandit.mp3",
      albumName: "TLK", // Ajoutez l'album ici
    ),
    Song(
      songName: "Beut",
      artistName: "DIP",
      albumArtImagePath: "assets/images/tlk.jpg",
      audioPath: "audio/tlk/Beut.mp3",
      albumName: "TLK", // Ajoutez l'album ici
    ),
    Song(
      songName: "YMYM",
      artistName: "DIP",
      albumArtImagePath: "assets/images/tlk.jpg",
      audioPath: "audio/tlk/Ymym.mp3",
      albumName: "TLK", // Ajoutez l'album ici
    ),
    Song(
      songName: "Nimala Beugué",
      artistName: "DIP",
      albumArtImagePath: "assets/images/tlk.jpg",
      audioPath: "audio/tlk/Nimalabeugue.mp3",
      albumName: "TLK", // Ajoutez l'album ici
    ),
    Song(
      songName: "Niata nio dess",
      artistName: "DIP",
      albumArtImagePath: "assets/images/tlk.jpg",
      audioPath: "audio/tlk/Niataniodess.mp3",
      albumName: "TLK", // Ajoutez l'album ici
    ),
    Song(
      songName: "Funérailles",
      artistName: "DIP",
      albumArtImagePath: "assets/images/tlk.jpg",
      audioPath: "audio/tlk/Funerailles.mp3",
      albumName: "TLK", // Ajoutez l'album ici
    ),
    Song(
      songName: "Kheula",
      artistName: "DIP",
      albumArtImagePath: "assets/images/tlk.jpg",
      audioPath: "audio/tlk/Kheula.mp3",
      albumName: "TLK", // Ajoutez l'album ici
    ),
    Song(
      songName: "Innocent",
      artistName: "DIP",
      albumArtImagePath: "assets/images/tlk.jpg",
      audioPath: "audio/tlk/Innocent.mp3",
      albumName: "TLK", // Ajoutez l'album ici
    ),
    Song(
      songName: "Kantambiuw",
      artistName: "DIP",
      albumArtImagePath: "assets/images/tlk.jpg",
      audioPath: "audio/tlk/Kantambiuw.mp3",
      albumName: "TLK", // Ajoutez l'album ici
    ),
    Song(
      songName: "Com Dab",
      artistName: "DIP",
      albumArtImagePath: "assets/images/tlk.jpg",
      audioPath: "audio/tlk/Commedab.mp3",
      albumName: "TLK", // Ajoutez l'album ici
    ),
    Song(
      songName: "Témanéfi",
      artistName: "DIP",
      albumArtImagePath: "assets/images/tlk.jpg",
      audioPath: "audio/tlk/Temanefi.mp3",
      albumName: "TLK", // Ajoutez l'album ici
    ),
    Song(
      songName: "Boula dara metti",
      artistName: "DIP",
      albumArtImagePath: "assets/images/tlk.jpg",
      audioPath: "audio/tlk/Bouladarametti.mp3",
      albumName: "TLK", // Ajoutez l'album ici
    ),
    Song(
      songName: "Beuss Niki Tay",
      artistName: "DIP",
      albumArtImagePath: "assets/images/bnt.jpg",
      audioPath: "audio/bnt/Bnt.mp3",
      albumName: "BNT", // Ajoutez l'album ici
    ),
    Song(
      songName: "Deug Deug",
      artistName: "DIP",
      albumArtImagePath: "assets/images/bnt.jpg",
      audioPath: "audio/bnt/Deugdeug.mp3",
      albumName: "BNT", // Ajoutez l'album ici
    ),
    Song(
      songName: "Assamane",
      artistName: "DIP",
      albumArtImagePath: "assets/images/bnt.jpg",
      audioPath: "audio/bnt/Assamane.mp3",
      albumName: "BNT", // Ajoutez l'album ici
    ),
    Song(
      songName: "Khamétoma",
      artistName: "DIP",
      albumArtImagePath: "assets/images/bnt.jpg",
      audioPath: "audio/bnt/Khamétoma.mp3",
      albumName: "BNT", // Ajoutez l'album ici
    ),
    Song(
      songName: "Yone bi",
      artistName: "DIP",
      albumArtImagePath: "assets/images/bnt.jpg",
      audioPath: "audio/bnt/Yonebi.mp3",
      albumName: "BNT", // Ajoutez l'album ici
    ),
    Song(
      songName: "Sama jeunesse",
      artistName: "DIP",
      albumArtImagePath: "assets/images/bnt.jpg",
      audioPath: "audio/bnt/Samajeunesse.mp3",
      albumName: "BNT", // Ajoutez l'album ici
    ),
    Song(
      songName: "Daay Deep",
      artistName: "DIP",
      albumArtImagePath: "assets/images/bnt.jpg",
      audioPath: "audio/bnt/Daaydeep.mp3",
      albumName: "BNT", // Ajoutez l'album ici
    ),
    Song(
    songName: "A Thindji",
    artistName: "DIP",
    albumArtImagePath: "assets/images/bnt.jpg",
    audioPath: "audio/bnt/Athindji.mp3",
    albumName: "BNT", // Ajoutez l'album ici
  ),
  Song(
    songName: "Reuthieu",
    artistName: "DIP",
    albumArtImagePath: "assets/images/bnt.jpg",
    audioPath: "audio/bnt/Reuthieu.mp3",
    albumName: "BNT", // Ajoutez l'album ici
  ),
  Song(
    songName: "Interview",
    artistName: "DIP",
    albumArtImagePath: "assets/images/bnt.jpg",
    audioPath: "audio/bnt/Interview.mp3",
    albumName: "BNT", // Ajoutez l'album ici
  ),
  Song(
    songName: "Xam Xam",
    artistName: "DIP",
    albumArtImagePath: "assets/images/bnt.jpg",
    audioPath: "audio/bnt/Xamxam.mp3",
    albumName: "BNT", // Ajoutez l'album ici
  ),
  Song(
    songName: "Déguenala",
    artistName: "DIP",
    albumArtImagePath: "assets/images/bnt.jpg",
    audioPath: "audio/bnt/Déguenala.mp3",
    albumName: "BNT", // Ajoutez l'album ici
  ),
  Song(
    songName: "Pogba",
    artistName: "DIP",
    albumArtImagePath: "assets/images/bnt.jpg",
    audioPath: "audio/bnt/Pogba.mp3",
    albumName: "BNT", // Ajoutez l'album ici
  ),
  Song(
    songName: "Rep'Team",
    artistName: "DIP",
    albumArtImagePath: "assets/images/bnt.jpg",
    audioPath: "audio/bnt/RepTeam.mp3",
    albumName: "BNT", // Ajoutez l'album ici
  ),
  Song(
    songName: "Nangou",
    artistName: "DIP",
    albumArtImagePath: "assets/images/bnt.jpg",
    audioPath: "audio/bnt/Nangou.mp3",
    albumName: "BNT", // Ajoutez l'album ici
  ),
  Song(
    songName: "Doundou Oundou",
    artistName: "DIP",
    albumArtImagePath: "assets/images/bnt.jpg",
    audioPath: "audio/bnt/Doundououndou.mp3",
    albumName: "BNT", // Ajoutez l'album ici
  ),
  Song(
    songName: "Yakarouma si kén",
    artistName: "DIP",
    albumArtImagePath: "assets/images/bnt.jpg",
    audioPath: "audio/bnt/Yakaroumasiken.mp3",
    albumName: "BNT", // Ajoutez l'album ici
  ),
  Song(
    songName: "Potolamp",
    artistName: "DIP",
    albumArtImagePath: "assets/images/bnt.jpg",
    audioPath: "audio/bnt/PotoLamp.mp3",
    albumName: "BNT", // Ajoutez l'album ici
  ),





  Song(
    songName: "Califat",
    artistName: "DIP",
    albumArtImagePath: "assets/images/dq.jpg",
    audioPath: "audio/dq/Califat.mp3",
    albumName: "Dip Quainzaine", // Ajoutez l'album ici
  ),
  Song(
    songName: "Chrono",
    artistName: "DIP",
    albumArtImagePath: "assets/images/dq.jpg",
    audioPath: "audio/dq/Chrono.mp3",
    albumName: "Dip Quainzaine", // Ajoutez l'album ici
  ),
  Song(
    songName: "Deuil National",
    artistName: "DIP",
    albumArtImagePath: "assets/images/dq.jpg",
    audioPath: "audio/dq/Deuilnational.mp3",
    albumName: "Dip Quainzaine", // Ajoutez l'album ici
  ),
  Song(
    songName: "Doundine",
    artistName: "DIP",
    albumArtImagePath: "assets/images/dq.jpg",
    audioPath: "audio/dq/Doundine.mp3",
    albumName: "Dip Quainzaine", // Ajoutez l'album ici
  ),
  Song(
    songName: "Fayeku",
    artistName: "DIP",
    albumArtImagePath: "assets/images/dq.jpg",
    audioPath: "audio/dq/Fayeku.mp3",
    albumName: "Dip Quainzaine", // Ajoutez l'album ici
  ),
  Song(
    songName: "Free Sn",
    artistName: "DIP",
    albumArtImagePath: "assets/images/dq.jpg",
    audioPath: "audio/dq/Freesn.mp3",
    albumName: "Dip Quainzaine", // Ajoutez l'album ici
  ),
  Song(
    songName: "Maay Kane",
    artistName: "DIP",
    albumArtImagePath: "assets/images/dq.jpg",
    audioPath: "audio/dq/Maaykane.mp3",
    albumName: "Dip Quainzaine", // Ajoutez l'album ici
  ),
  Song(
    songName: "Me N You",
    artistName: "DIP",
    albumArtImagePath: "assets/images/dq.jpg",
    audioPath: "audio/dq/Menyou.mp3",
    albumName: "Dip Quainzaine", // Ajoutez l'album ici
  ),
  Song(
    songName: "Noboma Woon",
    artistName: "DIP",
    albumArtImagePath: "assets/images/dq.jpg",
    audioPath: "audio/dq/Nobomawoon.mp3",
    albumName: "Dip Quainzaine", // Ajoutez l'album ici
  ),
  Song(
    songName: "Peaceofmind",
    artistName: "DIP",
    albumArtImagePath: "assets/images/dq.jpg",
    audioPath: "audio/dq/Peaceofmind.mp3",
    albumName: "Dip Quainzaine", // Ajoutez l'album ici
  ),
  Song(
    songName: "Prek",
    artistName: "DIP",
    albumArtImagePath: "assets/images/dq.jpg",
    audioPath: "audio/dq/Prek.mp3",
    albumName: "Dip Quainzaine", // Ajoutez l'album ici
  ),
  Song(
    songName: "Preuve",
    artistName: "DIP",
    albumArtImagePath: "assets/images/dq.jpg",
    audioPath: "audio/dq/Preuve.mp3",
    albumName: "Dip Quainzaine", // Ajoutez l'album ici
  ),
  Song(
    songName: "Saajobaan",
    artistName: "DIP",
    albumArtImagePath: "assets/images/dq.jpg",
    audioPath: "audio/dq/Saajobaan.mp3",
    albumName: "Dip Quainzaine", // Ajoutez l'album ici
  ),
  Song(
    songName: "Taaw",
    artistName: "DIP",
    albumArtImagePath: "assets/images/dq.jpg",
    audioPath: "audio/dq/Taaw.mp3",
    albumName: "Dip Quainzaine", // Ajoutez l'album ici
  ),
  ];

  //current song playing index
  int? _currentSongIndex;

/*

 A U D I O P L A Y E R

 */

//audioplayer
  final AudioPlayer _audioPlayer = AudioPlayer();

// durations
  Duration _currentDuration = Duration.zero;
  Duration _totalDuration = Duration.zero;

//constructor
  PlaylistProvider() {
    listenToDuration();
  }

//initially not playing
  bool _isPlaying = false;

//play the song
  void play() async {
    final String path = _playlist[_currentSongIndex!].audioPath;
    await _audioPlayer.stop(); //stop current song
    await _audioPlayer.play(AssetSource(path)); //play the new song
    _isPlaying = true;
    notifyListeners();
  }

//pause current song
  void pause() async {
    await _audioPlayer.pause();
    _isPlaying = false;
    notifyListeners();
  }

//resume playing
  void resume() async {
    await _audioPlayer.resume();
    _isPlaying = true;
    notifyListeners();
  }

//pause or resume
  void pauseOrResume() async {
    if (_isPlaying) {
      pause();
    } else {
      resume();
    }
    notifyListeners();
  }

// seek to a specific position in the current song
  void seek(Duration position) async {
    await _audioPlayer.seek(position);
  }

//play next song
  void playNextSong() {
    if (_currentSongIndex != null) {
      if (_currentSongIndex! < _playlist.length - 1) {
        // go to the next song if it's not the last song
        currentSongIndex = _currentSongIndex! + 1;
      } else {
        //if it's the last song, loop back to the first song
        currentSongIndex = 0;
      }
    }
  }

//play previous song
  void playPreviousSong() async {
//if mor than 2 seconds have passed, restart the current song
    if (_currentDuration.inSeconds > 2) {
      seek(Duration.zero);
    }
//if it's withing first 2 secnd of the song, go to previous song
    else {
      if (_currentSongIndex! > 0) {
        currentSongIndex = _currentSongIndex! - 1;
      } else {
        // if it's the first song, loop back to last song
        currentSongIndex = _currentSongIndex! - 1;
      }
    }
  }

//listen to duration
  void listenToDuration() {
    //listen for total duration
    _audioPlayer.onDurationChanged.listen((newDuration) {
      _totalDuration = newDuration;
      notifyListeners();
    });

    //listen for current duration
    _audioPlayer.onPositionChanged.listen((newPosition) {
      _currentDuration = newPosition;
      notifyListeners();
    });

    //listen for song completion
    _audioPlayer.onPlayerComplete.listen((event) {
      playNextSong();
    });
  }

//dispose audioplayer

  /* 
 G E T T E R S
*/

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;
  bool get isPlaying => _isPlaying;
  Duration get currentDuration => _currentDuration;
  Duration get totalDuration => _totalDuration;

/* 
 S E T T E R S
*/
  set currentSongIndex(int? newIndex) {
    //update current song index
    _currentSongIndex = newIndex;

    if (newIndex != null) {
      play(); //play the song at the new index
    }

    // update
    notifyListeners();
  }
}
