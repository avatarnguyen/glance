import 'dart:developer';

import 'package:logger/logger.dart';

// ignore: prefer_function_declarations_over_variables
final logger = (Type type) => Logger(
      printer: PrefixPrinter(
        PrettyPrinter(
          colors: false,
          methodCount: 0,
          lineLength: 80,
        ),
        location: "[${type.toString()}] ",
        debug: 'DEBUG - ',
        info: 'INFO - ',
        warning: 'WARN - ',
        error: 'ERROR - ',
        verbose: 'VERBOSE - ',
      ),
      output: ConsoleOutput(),
      // level: Level.debug,
    );

class PrefixPrinter extends LogPrinter {
  late final LogPrinter _realPrinter;
  late Map<Level, String> _prefixMap;

  PrefixPrinter(
    this._realPrinter, {
    String? location,
    String? debug,
    String? verbose,
    String? wtf,
    String? info,
    String? warning,
    String? error,
    String? nothing,
  }) : super() {
    _prefixMap = {
      Level.debug: "${debug ?? ''}$location ",
      Level.verbose: "${verbose ?? ''}$location ",
      Level.wtf: "${wtf ?? ''}$location ",
      Level.info: "${info ?? ''}$location ",
      Level.warning: "${warning ?? ''}$location ",
      Level.error: "${error ?? ''}$location ",
      Level.nothing: "${nothing ?? ''}$location ",
    };
  }

  @override
  List<String> log(LogEvent event) {
    return _realPrinter
        .log(event)
        .map((s) => "${_prefixMap[event.level]}$s")
        .toList();
  }
}

class ConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    for (final line in event.lines) {
      log(line);
    }
  }
}
