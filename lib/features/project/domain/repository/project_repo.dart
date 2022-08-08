import 'package:fpdart/fpdart.dart';
import 'package:glance/core/error/failure.dart';
import 'package:glance/features/project/domain/models/project.dart';

abstract class ProjectRepo {
  Future<Either<Failure, List<Project>>> getProjects();
  Future<Either<Failure, Unit>> createProject(Project project);
  Future<Either<Failure, Unit>> deleteProject(String id);
  Future<Either<Failure, Unit>> updateProject(Project project);
}
