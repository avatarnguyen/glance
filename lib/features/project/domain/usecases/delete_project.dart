import 'package:fpdart/fpdart.dart';
import 'package:glance/core/error/failure.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/project/domain/repository/project_repo.dart';

class UpdateProject extends UseCase<Unit, String> {
  final ProjectRepo repository;

  UpdateProject(this.repository);

  @override
  Future<Either<Failure, Unit>> call(String params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
