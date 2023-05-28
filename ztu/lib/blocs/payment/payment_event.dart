import 'package:equatable/equatable.dart';
import 'package:ztu/models/payment_method.dart';

abstract class PaymentEvent extends Equatable {
  const PaymentEvent();

  @override
  List<Object?> get props => [];
}

class LoadPayemntMethod extends PaymentEvent {}

class SelectPayemntMethod extends PaymentEvent {
  final PaymentMethod paymentMethod;

  const SelectPayemntMethod({required this.paymentMethod});

  @override
  List<Object?> get props => [paymentMethod];
}
