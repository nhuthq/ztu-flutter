import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pay/pay.dart';
import 'package:ztu/blocs/payment/payment_bloc.dart';
import 'package:ztu/blocs/payment/payment_event.dart';
import 'package:ztu/blocs/payment/payment_state.dart';
import 'package:ztu/models/payment_method.dart';
import 'package:ztu/presentation/widgets/custom_appbar.dart';
import 'package:ztu/presentation/widgets/custom_circular_indicator.dart';
import 'package:ztu/presentation/widgets/custom_nav_bar.dart';

class PaymentSelectionScreen extends StatelessWidget {
  static const String routeName = '/pay_selection';
  const PaymentSelectionScreen({super.key});

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const PaymentSelectionScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(title: 'Payment Selection'),
        bottomNavigationBar: const CustomBottomNavBar(screen: routeName),
        body: BlocBuilder<PaymentBloc, PaymentState>(
          builder: (context, state) {
            if (state is PaymentLoading) {
              return const CustomCircularIndicator();
            } else if (state is PaymentLoaded) {
              return ListView(
                padding: const EdgeInsets.all(20.0),
                children: [
                  Platform.isIOS
                      ? RawApplePayButton(
                          style: ApplePayButtonStyle.black,
                          type: ApplePayButtonType.inStore,
                          onPressed: () {
                            context.read<PaymentBloc>().add(
                                  const SelectPayemntMethod(
                                      paymentMethod: PaymentMethod.apple_pay),
                                );
                            Navigator.pop(context);
                          },
                        )
                      : const SizedBox(),
                  const SizedBox(height: 25),
                  Platform.isAndroid
                      ? RawGooglePayButton(
                          type: GooglePayButtonType.pay,
                          onPressed: () {
                            context.read<PaymentBloc>().add(
                                  const SelectPayemntMethod(
                                      paymentMethod: PaymentMethod.google_pay),
                                );
                            Navigator.pop(context);
                          },
                        )
                      : const SizedBox(),
                  const SizedBox(height: 25),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    onPressed: () {
                      context.read<PaymentBloc>().add(
                            const SelectPayemntMethod(
                                paymentMethod: PaymentMethod.credit_cart),
                          );
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Pay with Credit Card',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ],
              );
            } else {
              return Text(
                "Somethings went wrong",
                style: Theme.of(context).textTheme.displayMedium,
              );
            }
          },
        ));
  }
}
