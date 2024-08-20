import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'audio_controller.dart';

class AudioPlayerScreen extends StatelessWidget {
  final audioPlayerController = Get.put(AudioPlayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Audio Player"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Slider(
                min: 0.0,
                max: audioPlayerController.totalDuration.value.inMilliseconds
                    .toDouble(),
                value: audioPlayerController
                    .currentPosition.value.inMilliseconds
                    .toDouble(),
                onChanged: (value) {
                  audioPlayerController
                      .seek(Duration(milliseconds: value.toInt()));
                },
              )),
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(audioPlayerController.isPlaying.value
                        ? Icons.pause
                        : Icons.play_arrow),
                    onPressed: () {
                      if (audioPlayerController.isPlaying.value) {
                        audioPlayerController.pause();
                      } else {
                        audioPlayerController.play();
                      }
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.stop),
                    onPressed: () {
                      audioPlayerController.stop();
                    },
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

void main() {
  runApp(GetMaterialApp(
    home: AudioPlayerScreen(),
  ));
}
