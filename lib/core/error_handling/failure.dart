import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String message;
  final String? code;
  const Failure({required this.message, this.code});

  @override
  List<Object?> get props => [message, code];

  @override
  bool? get stringify => true;
}
