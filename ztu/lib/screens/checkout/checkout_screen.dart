import 'package:flutter/material.dart';
import 'package:ztu/widgets/custom_appbar.dart';
import 'package:ztu/widgets/custom_nav_bar.dart';
import 'package:ztu/widgets/section_title.dart';

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
    final TextEditingController emailController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    final TextEditingController cityController = TextEditingController();
    final TextEditingController countryController = TextEditingController();
    final TextEditingController zipCodeController = TextEditingController();

    return Scaffold(
      appBar: const CustomAppBar(title: 'Checkout'),
      bottomNavigationBar: const CustomBottomNavBar(screen: routeName),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "CUSTOMER INFORMATION"),
          _buildTextFormField(emailController, context, 'Email'),
          _buildTextFormField(nameController, context, 'Full Name'),
          const SectionTitle(title: "DELIVERY INFORMATION"),
          _buildTextFormField(addressController, context, 'Address'),
          _buildTextFormField(cityController, context, 'City'),
          _buildTextFormField(countryController, context, 'Country'),
          _buildTextFormField(zipCodeController, context, 'Zip Code'),
          const SectionTitle(title: "ORDER SUMMARY"),
        ],
      ),
    );
  }

  Padding _buildTextFormField(TextEditingController controller,
      BuildContext context, String labelText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
              controller: controller,
              cursorColor: Colors.grey,
              style: Theme.of(context).textTheme.labelMedium,
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
