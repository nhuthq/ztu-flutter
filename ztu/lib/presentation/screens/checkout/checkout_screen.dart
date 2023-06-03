import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ztu/blocs/checkout/checkout_bloc.dart';
import 'package:ztu/blocs/checkout/checkout_event.dart';
import 'package:ztu/blocs/checkout/checkout_state.dart';
import 'package:ztu/presentation/widgets/custom_appbar.dart';
import 'package:ztu/presentation/widgets/custom_circular_indicator.dart';
import 'package:ztu/presentation/widgets/custom_nav_bar.dart';
import 'package:ztu/presentation/widgets/custom_text_form_field.dart';
import 'package:ztu/presentation/widgets/order_summary.dart';
import 'package:ztu/presentation/widgets/section_title.dart';

class CheckoutScreen extends StatelessWidget {
  static const String routeName = '/checkout';
  const CheckoutScreen({super.key});

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const CheckoutScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Checkout'),
      bottomNavigationBar: const CustomBottomNavBar(screen: routeName),
      body:
          SingleChildScrollView(child: BlocBuilder<CheckoutBloc, CheckoutState>(
        builder: (context, state) {
          if (state is CheckoutLoading) {
            return const CustomCircularIndicator();
          } else if (state is CheckoutLoaded) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SectionTitle(title: "CUSTOMER INFORMATION"),
                CustomTextFormField(
                  title: 'Email',
                  textInputType: TextInputType.emailAddress,
                  textInputFormatter:
                      FilteringTextInputFormatter.singleLineFormatter,
                  onChanged: (value) {
                    context
                        .read<CheckoutBloc>()
                        .add(UpdateCheckout(email: value));
                  },
                ),
                CustomTextFormField(
                  title: 'Full name',
                  textInputType: TextInputType.name,
                  textInputFormatter:
                      FilteringTextInputFormatter.singleLineFormatter,
                  onChanged: (value) {
                    context
                        .read<CheckoutBloc>()
                        .add(UpdateCheckout(fullName: value));
                  },
                ),
                const SectionTitle(title: "DELIVERY INFORMATION"),
                CustomTextFormField(
                  title: 'Address',
                  textInputType: TextInputType.streetAddress,
                  textInputFormatter:
                      FilteringTextInputFormatter.singleLineFormatter,
                  onChanged: (value) {
                    context
                        .read<CheckoutBloc>()
                        .add(UpdateCheckout(address: value));
                  },
                ),
                CustomTextFormField(
                  title: 'City',
                  textInputType: TextInputType.streetAddress,
                  textInputFormatter:
                      FilteringTextInputFormatter.singleLineFormatter,
                  onChanged: (value) {
                    context
                        .read<CheckoutBloc>()
                        .add(UpdateCheckout(city: value));
                  },
                ),
                CustomTextFormField(
                  title: 'Country',
                  textInputType: TextInputType.streetAddress,
                  textInputFormatter:
                      FilteringTextInputFormatter.singleLineFormatter,
                  onChanged: (value) {
                    context
                        .read<CheckoutBloc>()
                        .add(UpdateCheckout(country: value));
                  },
                ),
                CustomTextFormField(
                  title: 'Zip Code',
                  textInputType: TextInputType.number,
                  textInputFormatter: FilteringTextInputFormatter.digitsOnly,
                  onChanged: (value) {
                    context
                        .read<CheckoutBloc>()
                        .add(UpdateCheckout(zipCode: value));
                  },
                ),
                const SizedBox(height: 10),
                _buildBtnPaymentMethod(context),
                const SectionTitle(title: "ORDER SUMMARY"),
                const OrderSummary(),
              ],
            );
          } else {
            return Text(
              "Somethings went wrong",
              style: Theme.of(context).textTheme.titleMedium,
            );
          }
        },
      )),
    );
  }

  Padding _buildBtnPaymentMethod(
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 40,
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/pay_selection',
                  );
                },
                child: Text(
                  'SELECT A PAYMENT METHOD',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
