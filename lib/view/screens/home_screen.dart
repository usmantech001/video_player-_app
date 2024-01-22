import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workout_app/widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
             padding: EdgeInsets.only(top: 50.h, right: 20.w, left: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    bigText(text: 'Training'),
                    Row(
                      children: [
                        Icon(Icons.navigate_before, size: 30.sp,color: Colors.black54,),
                        Icon(Icons.calendar_month, size: 25.sp,color: Colors.black54,),
                        Icon(Icons.navigate_next, size: 30.sp,color: Colors.black54,)
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bigText(text: 'Training', fontsize: 20.0, color: Colors.black54),
                      Row(
                        children: [
                          reuseableText(text: 'Details', color: Colors.deepPurple),
                          Icon(Icons.arrow_forward, color: Colors.deepPurple,)
                        ],
                      )
                
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                 // height: 200.h,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.sp),
                      bottomLeft: Radius.circular(15.sp),
                      topRight: Radius.circular(50.sp),
                      bottomRight: Radius.circular(15.sp)
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.deepPurple,
                        Colors.purple.shade200
                      ])
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     reuseableText(text: 'Next Workout'), 
                      SizedBox(height: 10.h,),
                      bigText(text: 'Leg Toning', color: Colors.white),
                      bigText(text: 'and Glutes Workout', color: Colors.white),
                      Padding(
                        padding: EdgeInsets.only(top: 50.h),
                        child: Row(
                          children: [
                            Icon(Icons.timer, color: Colors.white,)
                          ],
                        ),
                      ),
      
                    ],
                  ),
                ),
                SizedBox(height: 20.h,),
                Stack(
                  children: [
                    Material(
                      elevation: 5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.only(top: 10.h, bottom: 15.h, right: 10.w, left: 10.w),
                          width: MediaQuery.sizeOf(context).width,
                         
                          decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              bigText(text: 'You are doing great', color: Colors.deepPurple, fontsize: 18.sp),
                              SizedBox(height: 10.h,),
                              reuseableText(text: 'Keep it up', color: Colors.grey),
                              reuseableText(text: 'stick to your plan', color: Colors.grey)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ), 
                SizedBox(height: 15.h,),
                bigText(text: 'Area of focus', fontsize: 22.sp),
                
              
              ],
            ),
          ),
          Expanded(
               
                  child: GridView.builder(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                    shrinkWrap: true,
                    controller: ScrollController(),
                    physics:const BouncingScrollPhysics(),
                    itemCount: 4,
                    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10
                      ), 
                    itemBuilder: (context, index){
                      return Material(
                        elevation: 5,
                        child: Container(
                          height: 100,
                          color: Colors.white,
                        ),
                      );
                    }),
                ) 
        ],
      )
    );
  }
}