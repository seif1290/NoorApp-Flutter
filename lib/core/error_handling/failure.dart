import 'package:noor/core/error_handling/localized_err_msg.dart';
import 'package:noor/core/error_handling/network_exception.dart';

class Failure {
  final NetworkExceptionType type;
  late String msg;

  Failure({required this.type}) {
    msg = LocalizedErrMsg.getReadableMsg(type: type);
  }
}
