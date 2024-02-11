import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lastmusicapp/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
//playist of songs
  final List<Song> _playlist = [
    //song 1
    Song(
        songName: "Lepp FLF",
        artistName: "DIP",
        albumArtImagePath: "assets/images/lflf.jpeg",
        audioPath: "audio/glass.mp3"),

    //song 2
    Song(
        songName: "Lo NN",
        artistName: "DIP",
        albumArtImagePath: "assets/images/lnn.jpeg",
        audioPath: "audio/illusions.mp3"),

    //song 3
    Song(
      songName: "GOAT",
      artistName: "DIP",
      albumArtImagePath: "assets/images/dip.jpeg",
      audioPath: "audio/pray.mp3",
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
