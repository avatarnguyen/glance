import 'package:fpdart/fpdart.dart';
import 'package:glance/core/error/failure.dart';
import 'package:glance/core/glance_core.dart';
import 'package:glance/features/calendar/domain/entity/calendar.dart';
import 'package:glance/features/calendar/domain/repositories/calendar_repository.dart';

class GetCalendars extends NoParamsUseCase<List<Calendar>> {
  final CalendarRepository repository;

  GetCalendars(this.repository);

  @override
  Future<Either<Failure, List<Calendar>>> call() {
    return repository.getAllCalendars();
  }
}
