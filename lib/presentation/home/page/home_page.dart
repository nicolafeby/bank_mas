import 'package:bank_mas/core/widget/error_widget.dart';
import 'package:bank_mas/presentation/home/bloc/menu_and_article_bloc.dart';
import 'package:bank_mas/presentation/home/widget/article_sections.dart';
import 'package:bank_mas/presentation/home/widget/home_skeleton.dart';
import 'package:bank_mas/presentation/home/widget/menu_item_sections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late MenuAndArticleBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of(context);
    _bloc.add(MenuAndArticleStarted());
  }

  Widget _buildBody() {
    return BlocBuilder<MenuAndArticleBloc, MenuAndArticleState>(
      builder: (context, state) {
        if (state is MenuAndArticleLoadInProgress) {
          return const HomeSkeleton();
        } else if (state is MenuAndArticleLoadInFailure) {
          _showErrorDialog();
        }

        (state as MenuAndArticleLoadInSuccess);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MenuItemSections(entity: state.entity),
            SizedBox(height: 4.h),
            ArticleSections(entity: state.entity),
          ],
        );
      },
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

  Future<void> _showErrorDialog() {
    return Future.delayed(Duration.zero, () {
      showDialog(
        context: context,
        builder: (context) {
          return const CustomErrorWidget();
        },
      );
    });
  }
}
