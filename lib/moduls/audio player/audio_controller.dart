import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerController extends GetxController {
  final AudioPlayer _audioPlayer = AudioPlayer();
  var isPlaying = false.obs;
  var currentPosition = Duration.zero.obs;
  var totalDuration = Duration.zero.obs;

  @override
  void onInit() {
    super.onInit();

    _audioPlayer.durationStream.listen((duration) {
      totalDuration.value = duration ?? Duration.zero;
    });

    _audioPlayer.positionStream.listen((position) {
      currentPosition.value = position;
    });

    _audioPlayer.playerStateStream.listen((playerState) {
      isPlaying.value = playerState.playing;
    });
  }

  audioPlayer(audiolink) {
    _audioPlayer.setUrl(audiolink);
  }

  void play() {
    _audioPlayer.play();
  }

  void pause() {
    _audioPlayer.pause();
  }

  void stop() {
    _audioPlayer.stop();
  }

  void seek(Duration position) {
    _audioPlayer.seek(position);
  }

  @override
  void onClose() {
    _audioPlayer.dispose();
    super.onClose();
  }
}
