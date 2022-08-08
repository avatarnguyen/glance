import 'package:glance/core/dependency_injection/storage_dependency.dart';
import 'package:glance/features/project/domain/usecases/create_project.dart';
import 'package:glance/features/project/domain/usecases/get_project.dart';
import 'package:glance/features/project/domain/usecases/update_project.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'project_state.dart';

final projectProvider =
    StateNotifierProvider<ProjectNotifier, ProjectState>((ref) {
  return ProjectNotifier(ref);
});

class ProjectNotifier extends StateNotifier<ProjectState> {
  final GetProject _getProject;
  final CreateProject _createProject;
  final UpdateProject _updateProject;
  ProjectNotifier(Ref ref)
      : _getProject = ref.read(getProjectProvider),
        _createProject = ref.read(createProjectProvider),
        _updateProject = ref.read(updateProjectProvider),
        super(const ProjectState.initial());
}
