import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleSections extends StatelessWidget {
  const ArticleSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Our Blog',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 12.h),
          _buildArticleCard(context)
        ],
      ),
    );
  }

  Widget _buildArticleCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              topRight: Radius.circular(8.r),
            ),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              width: double.infinity,
              height: 120.h,
              imageUrl:
                  'https://bankmas.co.id/_next/image/?url=https%3A%2F%2Fbankmas.co.id%2Fcms%2Fstorage%2Fapp%2Fmedia%2Fblog-berita%2Fperbedaan-tabundan-dan-deposito-1200x628.jpg&w=3840&q=75',
            ),
          ),
          Padding(
            // padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
            padding: EdgeInsets.all(8.h),
            child: Text(
              'Perbedaan tabungan dan deosito',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 16.sp,
                  color: const Color(0xff3f51b5),
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
