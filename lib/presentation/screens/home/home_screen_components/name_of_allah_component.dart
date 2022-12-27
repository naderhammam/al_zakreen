import 'package:al_zakreen/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class NameOfAllah extends StatefulWidget {
  const NameOfAllah({Key? key}) : super(key: key);

  @override
  State<NameOfAllah> createState() => _NameOfAllahState();
}

class _NameOfAllahState extends State<NameOfAllah> {
  late YoutubePlayerController controller;


  @override
  void initState(){
    super.initState();
    const url = 'https://www.youtube.com/watch?v=CckVSZ8C5mc&list=PLf23n9TTOK4f3q_3chAShLcYQbTF6g8b9&index=74';
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,

      ),
    );

  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
    player: YoutubePlayer(
      controller: controller,
    ),
    builder: (context, player) => Padding(
      padding: EdgeInsets.only(top: 16.h,bottom: 16.h,left: 16.w,right: 16.w),
      child: Container(
        height: 192.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(4.r),
          boxShadow: [
            BoxShadow(
                color: ColorManager.greyShade300,
                spreadRadius: 1.r,
                blurRadius: 2.r,
                offset:  Offset(0, 1.r))
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Text(
                  'Discover The Name of Allah',
                  style: TextStyle(
                    fontFamily: 'Josefin Sans',
                    color: ColorManager.teal,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                  clipBehavior: Clip.antiAlias,
                  height: 114.12.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(4.r)
                  ),
                  child: player),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(top: 11.88.h,),
                  child: Row(
                    children: [
                      Text(
                        'Alrahman',
                        style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: ColorManager.greyShade400,
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Text(
                        'Alrahim',
                        style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: ColorManager.primary,
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Text(
                        'Almalek',
                        style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: ColorManager.greyShade400,
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Text(
                        'Alkodos',
                        style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: ColorManager.greyShade400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
  }

