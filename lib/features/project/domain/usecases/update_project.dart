import 'package:fpdart/fpdart.dart';
import 'package:glance/core/error/failure.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/project/domain/models/project.dart';
import 'package:glance/features/project/domain/repository/project_repo.dart';

class UpdateProject extends UseCase<Unit, Project> {
  final ProjectRepo repository;

  UpdateProject(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Project params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
