import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.gColor.primary1,
      body: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            heroTag: const ObjectKey(ProjectPage),
            border: null,
            backgroundColor: context.gColor.primary1,
            stretch: true,
            largeTitle: AppText.title1(
              'Projects',
              color: context.gColor.accent1,
            ),
            leading: const SizedBox(width: 0),
          ),
          // SliverPadding(
          //   padding: EdgeInsets.only(top: context.gSpacing.regular),
          // ),
          SliverPadding(
            padding: EdgeInsets.all(context.gSpacing.semiSmall),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Card(
                    elevation: 0,
                    child: Column(
                      children: const [
                        AppText.title1('Test Title'),
                        AppText.paragraph1('subtile')
                      ],
                    ),
                  );
                },
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 1.8,
              ),
            ),
          )
        ],
      ),
    );
  }
}
