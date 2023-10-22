import 'package:bank_mas/core/argument/webview_arg.dart';
import 'package:bank_mas/core/enum/data_section_enum.dart';
import 'package:bank_mas/core/router/router_constant.dart';
import 'package:bank_mas/core/widget/custom_network_image.dart';
import 'package:bank_mas/domain/entities/menu_and_article_entitity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuItemSections extends StatelessWidget {
  const MenuItemSections({
    super.key,
    required this.entity,
  });

  final MenuAndArticleEntity entity;

  Widget _buildItem(
    BuildContext context, {
    required String title,
    required String icon,
    required String link,
  }) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        RouterConstant.webview,
        arguments: WebViewArg(url: link),
      ),
      child: Column(
        children: [
          CustomNetworkImage(imageUrl: icon),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final data = entity.data
        ?.where((element) => element.section == Section.products.value)
        .toList();

    if (data == null) return const SizedBox();

    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        elevation: 4,
        child: Wrap(
          children: List.generate(
            data.length,
            (index) {
              final items = data[index].items;
              if (items == null) return const SizedBox();

              return GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                shrinkWrap: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(items.length, (itemIndex) {
                  final title = items[itemIndex].productName;
                  if (title == null) return const SizedBox();
                  final icon = items[itemIndex].productImage;
                  if (icon == null) return const SizedBox();
                  final link = items[itemIndex].link;
                  if (link == null) return const SizedBox();

                  return _buildItem(
                    context,
                    title: title,
                    icon: icon,
                    link: link,
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}
