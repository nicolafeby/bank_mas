import 'package:bank_mas/core/argument/webview_arg.dart';
import 'package:bank_mas/core/enum/data_section_enum.dart';
import 'package:bank_mas/core/router/router_constant.dart';
import 'package:bank_mas/core/widget/custom_network_image.dart';
import 'package:bank_mas/domain/entities/menu_and_article_entitity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleSections extends StatelessWidget {
  const ArticleSections({
    super.key,
    required this.entity,
  });

  final MenuAndArticleEntity entity;

  Widget _buildArticleCard(
    BuildContext context, {
    required String image,
    required String title,
    required String link,
  }) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        RouterConstant.webview,
        arguments: WebViewArg(url: link),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.r),
                topRight: Radius.circular(8.r),
              ),
              child: CustomNetworkImage(
                imageUrl: image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 120.h,
              ),
            ),
            Padding(
              // padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
              padding: EdgeInsets.all(8.h),
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 16.sp,
                    color: const Color(0xff3f51b5),
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final data = entity.data
        ?.where((element) => element.section == Section.articles.value)
        .toList();
    if (data == null) return const SizedBox();

    return Expanded(
      child: Wrap(
        children: List.generate(
          data.length,
          (index) {
            final items = data[index].items;
            if (items == null) return const SizedBox();

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  child: Text(
                    'Our Blog',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                SizedBox(height: 4.h),
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 355.h),
                  child: ListView.separated(
                    shrinkWrap: true,
                    padding:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                    itemCount: items.length,
                    itemBuilder: (context, itemIndex) {
                      final title = items[itemIndex].articleTitle;
                      if (title == null) return const SizedBox();
                      final image = items[itemIndex].articleImage;
                      if (image == null) return const SizedBox();
                      final link = items[itemIndex].link;
                      if (link == null) return const SizedBox();

                      return _buildArticleCard(
                        context,
                        image: image,
                        title: title,
                        link: link,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 8.h);
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
