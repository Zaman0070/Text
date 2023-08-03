import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBox extends StatelessWidget {
  final String image;
  final String title;
  final Function() onTap;
  const HomeBox(
      {super.key,
      required this.image,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 120.h,
        width: 1.sw,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://image.tmdb.org/t/p/w500/$image',
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.7),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
