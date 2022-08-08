import 'package:fpdart/fpdart.dart';
import 'package:glance/core/domain/usecases/usecases.dart';
import 'package:glance/core/error/failure.dart';
import 'package:glance/features/project/domain/models/project.dart';
import 'package:glance/features/project/domain/repository/project_repo.dart';

class GetProject extends NoParamsUseCase<List<Project>> {
  final ProjectRepo repository;

  GetProject(this.repository);

  @override
  Future<Either<Failure, List<Project>>> call() async {
    return Left(ServerFailure());
  }
}
