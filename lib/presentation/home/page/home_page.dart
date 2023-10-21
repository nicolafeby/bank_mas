import 'package:bank_mas/presentation/home/widget/article_sections.dart';
import 'package:bank_mas/presentation/home/widget/menu_item_sections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MenuItemSections(),
        SizedBox(height: 4.h),
        const ArticleSections(),
      ],
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      title: const Text('Flutter Assignment'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }
}
