import 'package:firebase_storage/firebase_storage.dart';
import 'package:glance/core/data/datasource/storage_datasource.dart';
import 'package:glance/features/project/data/repository/project_repo_impl.dart';
import 'package:glance/features/project/domain/repository/project_repo.dart';
import 'package:glance/features/project/domain/usecases/create_project.dart';
import 'package:glance/features/project/domain/usecases/get_project.dart';
import 'package:glance/features/project/domain/usecases/update_project.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final firebaseStorageProvider = Provider<FirebaseStorage>((ref) {
  return FirebaseStorage.instance;
});

final firebaseCloudStorageProvider = Provider<StorageDatasource>((ref) {
  return CloudStorageDatasource(ref.read(firebaseStorageProvider));
});

// ----------- Project -----------------
final projectRepoProvider = Provider<ProjectRepo>((ref) {
  return ProjectRepoImpl(ref.read(firebaseCloudStorageProvider));
});

final getProjectProvider = Provider<GetProject>((ref) {
  return GetProject(ref.read(projectRepoProvider));
});

final createProjectProvider = Provider<CreateProject>((ref) {
  return CreateProject(ref.read(projectRepoProvider));
});

final updateProjectProvider = Provider<UpdateProject>((ref) {
  return UpdateProject(ref.read(projectRepoProvider));
});

// final deleteProjectProvider = Provider<DeleteProject>((ref) {
//   return DeleteProject(ref.read(projectRepoProvider));
// });

// ----------- Task -----------------
