import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ztu/blocs/payment/payment_event.dart';
import 'package:ztu/blocs/payment/payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(PaymentLoading()) {
    on<LoadPayemntMethod>(_onLoadPayment);
    on<SelectPayemntMethod>(_onSelectPayment);
  }

  void _onLoadPayment(LoadPayemntMethod event, Emitter<PaymentState> emit) {
    emit(const PaymentLoaded());
  }

  void _onSelectPayment(SelectPayemntMethod event, Emitter<PaymentState> emit) {
    emit(PaymentLoaded(paymentMethod: event.paymentMethod));
  }
}
