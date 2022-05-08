import 'package:fpdart/fpdart.dart';
import 'package:glance/core/domain/usecases/usecases.dart';
import 'package:glance/core/error/failure.dart';
import 'package:glance/features/calendar/domain/repositories/calendar_event_respository.dart';
import 'package:glance/features/create/presentation/logic/create_state.dart';

class CreateTask extends UseCase<Unit, CreateState> {
  final CalendarEventRepository repository;

  CreateTask(this.repository);

  @override
  Future<Either<Failure, Unit>> call(CreateState params) async {
    return Left(ServerFailure());
  }
}
