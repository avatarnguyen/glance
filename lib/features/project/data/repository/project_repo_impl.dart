import 'package:fpdart/fpdart.dart';
import 'package:glance/core/data/datasource/storage_datasource.dart';
import 'package:glance/core/error/failure.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/project/data/models/project_model.dart';
import 'package:glance/features/project/domain/models/project.dart';
import 'package:glance/features/project/domain/repository/project_repo.dart';

class ProjectRepoImpl implements ProjectRepo {
  final StorageDatasource remoteDatasource;

  ProjectRepoImpl(this.remoteDatasource);

  final _log = logger(ProjectRepoImpl);

  @override
  Future<Either<Failure, Unit>> createProject(Project project) async {
    try {
      final _projectMap = FirebaseProjectModel.fromEntity(project).toJson();
      await remoteDatasource.createData(_projectMap);
      return const Right(unit);
    } catch (e) {
      _log.e("on getProjects: $e");
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteProject(String id) {
    // TODO: implement deleteProject
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Project>>> getProjects() async {
    try {
      final _result = await remoteDatasource.getData();
      final _projects = _result
          .map(
            (item) => FirebaseProjectModel.fromJson(item).toEntity(),
          )
          .toList();
      return Right(_projects);
    } catch (e) {
      _log.e("on getProjects: $e");
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> updateProject(Project project) async {
    try {
      final _projectMap = FirebaseProjectModel.fromEntity(project).toJson();
      await remoteDatasource.updateData(_projectMap);
      return const Right(unit);
    } catch (e) {
      _log.e("on getProjects: $e");
      return Left(ServerFailure());
    }
  }
}
