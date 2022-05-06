import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage>
    with AutomaticKeepAliveClientMixin<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      key: const PageStorageKey<String>('project_page'),
      backgroundColor: context.gColor.primary,
      body: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            heroTag: const ObjectKey(ProjectPage),
            border: null,
            backgroundColor: context.gColor.primary,
            stretch: true,
            largeTitle: const AppText.title1(
              'Projects',
            ),
            leading: const SizedBox(width: 0),
          ),
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

  @override
  bool get wantKeepAlive => true;
}
