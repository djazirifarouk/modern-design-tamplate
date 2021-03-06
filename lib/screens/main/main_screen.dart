import 'package:flutter/material.dart';
import 'package:moder_design_app/constants.dart';
import 'package:moder_design_app/controllers/MenuController.dart';
import 'package:provider/provider.dart';
import '../../responsive.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                    // This takes 2/(2+7) = 2/9
                    flex: 2,
                    child: SideMenu()),
              // if (Responsive.isTablet(context) || Responsive.isMobile(context))

              SizedBox(width: defalutPadding),
              Expanded(
                // This takes 7/(2+7) = 7/9
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                      // footer
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
