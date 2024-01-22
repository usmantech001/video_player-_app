import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:workout_app/controller/video_controller.dart';
import 'package:workout_app/widgets/widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VideoController>(
      builder: (videocontroller) {
        return Scaffold(
          body: Stack(
            children: [
              Positioned(
                top: 0,

                child: Container(
                  padding: EdgeInsets.only(top: 30.h, right: 20.w, left: 20.w),
                  height: MediaQuery.sizeOf(context).height*0.42,
                  width: MediaQuery.sizeOf(context).width,
                   decoration: BoxDecoration(
                          
                         
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Colors.deepPurple,
                              Colors.purple.shade200
                            ])
                        ),
                        child:videocontroller.isPlaying==true?AspectRatio(
                          aspectRatio: 16/9,
                          child: VideoPlayer(videocontroller.videoPlayerController!),
                          ): Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.arrow_back_ios, color: Colors.white,)
                              ],
                            ),
                            SizedBox(height: 20.h,),
                             bigText(text: 'Leg Toning', color: Colors.white, fontsize: 22.sp),
                            bigText(text: 'and Glutes Workout', color: Colors.white, fontsize: 22.sp),
                            Expanded(child: Container()),
                            Padding(
                              padding: EdgeInsets.only(bottom: 70.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    
                                    padding: EdgeInsets.all(3),
                                    
                                    decoration: BoxDecoration(
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(5)),
                                    child: Row(
                                      children: [
                                        Icon(Icons.timer, color: Colors.white, size: 15.sp,),
                                        SizedBox(width: 5.w,),
                                        reuseableText(text: '60 min', fontSize: 13.0)
                                      ],
                                    ),
                                  ),
                                   Container(
                                    
                                    padding: EdgeInsets.all(3),
                                    
                                    decoration: BoxDecoration(
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(5)),
                                    child: Row(
                                      children: [
                                        Icon(Icons.timer, color: Colors.white, size: 15.sp,),
                                        SizedBox(width: 5.w,),
                                        reuseableText(text: 'Resistant band kettebell', fontSize: 13.0)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                ),
              ),
              Positioned(
                top: 250.h,
                
                child: Container(
                  height:MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.sp)
                  )
                 ),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                      child: bigText(text: 'Circuit1: Legs Toning', fontsize: 20),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        physics: const BouncingScrollPhysics(),
                        itemCount: videocontroller.videoInfo.length,
                        itemBuilder: (context, index){
                          var info = videocontroller.videoInfo[index][index];
                          print(info);
                          
                          return GestureDetector(
                            onTap: () => videocontroller.onTapVideo(info['videoUrl']),
                            child: Container(
                              margin: EdgeInsets.only(top: 20.h),
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              //color: Colors.red,
                              decoration:const BoxDecoration(
                                color: Colors.white54,
                                border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey
                                )
                              )),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 80.h,
                                    width: 80.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white
                                    ),
                                  ),
                                  SizedBox(width: 10.w,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      bigText(text: info['title'], fontsize: 20),
                                      reuseableText(text: info['time'], color: Colors.grey)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                      }),
                    )
                  ],
                 ),
                ))
            ],
          ),
        );
      }
    );
  }
}