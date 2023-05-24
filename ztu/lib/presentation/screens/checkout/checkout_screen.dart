import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ztu/blocs/checkout/checkout_bloc.dart';
import 'package:ztu/blocs/checkout/checkout_event.dart';
import 'package:ztu/blocs/checkout/checkout_state.dart';
import 'package:ztu/presentation/widgets/custom_appbar.dart';
import 'package:ztu/presentation/widgets/custom_circular_indicator.dart';
import 'package:ztu/presentation/widgets/custom_nav_bar.dart';
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
                _buildTextFormField((value) {
                  context
                      .read<CheckoutBloc>()
                      .add(UpdateCheckout(email: value));
                }, context, 'Email', TextInputType.emailAddress,
                    FilteringTextInputFormatter.singleLineFormatter),
                _buildTextFormField((value) {
                  context.read<CheckoutBloc>().add(
                        UpdateCheckout(
                          fullName: value,
                        ),
                      );
                }, context, 'Full Name', TextInputType.name,
                    FilteringTextInputFormatter.singleLineFormatter),
                const SectionTitle(title: "DELIVERY INFORMATION"),
                _buildTextFormField((value) {
                  context
                      .read<CheckoutBloc>()
                      .add(UpdateCheckout(address: value));
                }, context, 'Address', TextInputType.streetAddress,
                    FilteringTextInputFormatter.singleLineFormatter),
                _buildTextFormField((value) {
                  context.read<CheckoutBloc>().add(UpdateCheckout(city: value));
                }, context, 'City', TextInputType.streetAddress,
                    FilteringTextInputFormatter.singleLineFormatter),
                _buildTextFormField((value) {
                  context
                      .read<CheckoutBloc>()
                      .add(UpdateCheckout(country: value));
                }, context, 'Country', TextInputType.streetAddress,
                    FilteringTextInputFormatter.singleLineFormatter),
                _buildTextFormField((value) {
                  context
                      .read<CheckoutBloc>()
                      .add(UpdateCheckout(zipCode: value));
                }, context, 'Zip Code', TextInputType.number,
                    FilteringTextInputFormatter.digitsOnly),
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
                    '/payment-selection',
                  );
                },
                child: Text(
                  'SELECT A PAYMENT METHOD',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
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

  Padding _buildTextFormField(
      Function(String)? onChanged,
      BuildContext context,
      String labelText,
      TextInputType textInputType,
      TextInputFormatter inputFormatter) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 1,
            child:
                Text(labelText, style: Theme.of(context).textTheme.labelSmall),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 4,
            child: TextFormField(
              onChanged: onChanged,
              cursorColor: Colors.grey,
              style: Theme.of(context).textTheme.labelMedium,
              keyboardType: textInputType,
              inputFormatters: [inputFormatter],
              decoration: const InputDecoration(
                  isDense: true,
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
        ],
      ),
    );
  }
}
