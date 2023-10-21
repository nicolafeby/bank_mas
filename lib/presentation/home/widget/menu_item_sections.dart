import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuItemSections extends StatelessWidget {
  const MenuItemSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          //set border radius more than 50% of height and width to make circle
        ),
        elevation: 4,
        child: GridView.count(
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: List.generate(5, (index) => _buildItem(context)),
        ),
      ),
    );
  }

  Widget _buildItem(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: 'https://img.icons8.com/color/money-transfer.png',
        ),
        Text(
          'Transfer',
          style: Theme.of(context).textTheme.bodyLarge,
        )
      ],
    );
  }
}
