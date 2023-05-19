import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
          _buildTextFormField(
              emailController,
              context,
              'Email',
              TextInputType.emailAddress,
              FilteringTextInputFormatter.singleLineFormatter),
          _buildTextFormField(
              nameController,
              context,
              'Full Name',
              TextInputType.name,
              FilteringTextInputFormatter.singleLineFormatter),
          const SectionTitle(title: "DELIVERY INFORMATION"),
          _buildTextFormField(
              addressController,
              context,
              'Address',
              TextInputType.streetAddress,
              FilteringTextInputFormatter.singleLineFormatter),
          _buildTextFormField(
              cityController,
              context,
              'City',
              TextInputType.streetAddress,
              FilteringTextInputFormatter.singleLineFormatter),
          _buildTextFormField(
              countryController,
              context,
              'Country',
              TextInputType.streetAddress,
              FilteringTextInputFormatter.singleLineFormatter),
          _buildTextFormField(zipCodeController, context, 'Zip Code',
              TextInputType.number, FilteringTextInputFormatter.digitsOnly),
          const SectionTitle(title: "ORDER SUMMARY"),
        ],
      ),
    );
  }

  Padding _buildTextFormField(
      TextEditingController controller,
      BuildContext context,
      String labelText,
      TextInputType textInputType,
      TextInputFormatter inputFormatter) {
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
