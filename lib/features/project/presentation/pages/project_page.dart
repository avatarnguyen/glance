import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/project/presentation/providers/project_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProjectPage extends ConsumerStatefulWidget {
  const ProjectPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _ProjectPageState();
}

class _ProjectPageState extends ConsumerState<ProjectPage>
    with AutomaticKeepAliveClientMixin<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final _projectState = ref.watch(projectProvider);

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
          _projectState.maybeWhen(
            loaded: (projects) {
              return SliverPadding(
                padding: EdgeInsets.all(context.gSpacing.semiSmall),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (_, index) {
                      final _project = projects[index];
                      return Card(
                        elevation: 0,
                        child: Column(
                          children: [
                            AppText.title1(_project.title!),
                            AppText.paragraph1(_project.itemsCount!.toString())
                          ],
                        ),
                      );
                    },
                    childCount: projects.length,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 1.8,
                  ),
                ),
              );
            },
            error: (message) {
              return SliverToBoxAdapter(
                child: Container(
                  color: context.gColor.primary,
                  child: Center(
                    child: AppText.title2(
                      message ?? "Unknown Error occurred",
                    ),
                  ),
                ),
              );
            },
            orElse: () {
              return SliverToBoxAdapter(
                child: Container(
                  color: context.gColor.primary,
                  child: const Center(child: kProgressIndicator),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
