import 'package:fpdart/fpdart.dart';
import 'package:glance/core/error/failure.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/calendar/domain/repositories/calendar_event_respository.dart';
import 'package:glance/features/create/presentation/logic/create_state.dart';

class CreateEvent extends UseCase<Unit, CreateState> {
  final CalendarEventRepository repository;

  CreateEvent(this.repository);

  @override
  Future<Either<Failure, Unit>> call(CreateState params) async {
    return Left(ServerFailure());
  }
}
