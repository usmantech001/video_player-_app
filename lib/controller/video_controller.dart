import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:workout_app/model/video_model.dart';

class VideoController extends GetxController{
  static VideoController get instance => Get.find();
  VideoPlayerController? videoPlayerController;
  List videoInfo =[];
  bool isPlaying = false;
  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
   await DefaultAssetBundle.of(Get.context!).loadString('json/videoinfo.json').then((value){
      videoInfo.add(jsonDecode(value));
      update();
      print(videoInfo.length);
    });
  }

  onTapVideo(String uri){
    print('pressed');
    var _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'));
    videoPlayerController = _videoPlayerController;
    update();
    _videoPlayerController.initialize().then((value){
    //  _videoPlayerController.addListener(() { });
      if(_videoPlayerController.value.isInitialized){
        
        _videoPlayerController.play();
        print('Playing');
        isPlaying = _videoPlayerController.value.isPlaying;
        update();
        update();
      }else{
        print('initializing');
      }
      
    });
  }
}