import 'package:equatable/equatable.dart';

class LocalException extends Equatable implements Exception {
  final String message;
  const LocalException({required this.message});

  @override
  List<Object?> get props => [message];

  @override
  bool? get stringify => true;
}
