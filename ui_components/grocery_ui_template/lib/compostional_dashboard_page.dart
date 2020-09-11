import 'package:grocery_ui_template/app_bar_widget.dart';
import 'package:grocery_ui_template/app_theme.dart';
import 'package:grocery_ui_template/category_widget.dart';
import 'package:grocery_ui_template/popular_items_list_widget.dart';
import 'package:grocery_ui_template/popular_section_header_widget.dart';
import 'package:grocery_ui_template/quick_items_list_widget.dart';
import 'package:grocery_ui_template/search_bar_widget.dart';
import 'package:flutter/material.dart';

class CompositionalDashboardPage extends StatefulWidget {
  CompositionalDashboardPage({Key key}) : super(key: key);

  @override
  _CompositionalDashboardPageState createState() =>
      _CompositionalDashboardPageState();
}

class _CompositionalDashboardPageState
    extends State<CompositionalDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appWhiteColor,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          AppBarWidget(),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SearchBarWidget(),
                      SizedBox(
                        height: 10.0,
                      ),
                      CategoryWidget(),
                      SizedBox(
                        height: 45.0,
                      ),
                      QuickItemsListWidget(),
                      SizedBox(
                        height: 40.0,
                      ),
                      PopularSectionHeaderWidget(),
                      SizedBox(
                        height: 25.0,
                      ),
                      PopularItemsListWidget()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
