import 'package:flutter/material.dart';
import 'package:pay/pay.dart';
import 'package:ztu/models/product.dart';

class ApplePay extends StatelessWidget {
  final String total;
  final List<Product> products;
  const ApplePay({super.key, required this.total, required this.products});

  @override
  Widget build(BuildContext context) {
    var paymentItems = products
        .map((item) => PaymentItem(
            label: item.name,
            amount: item.price.toString(),
            type: PaymentItemType.item,
            status: PaymentItemStatus.final_price))
        .toList();

    paymentItems.add(PaymentItem(
        label: 'Total',
        amount: total,
        type: PaymentItemType.item,
        status: PaymentItemStatus.final_price));

    void onPaymentResult(onPaymentResult) {
      debugPrint(onPaymentResult.toString());
    }

    return SizedBox(
      width: MediaQuery.of(context).size.width - 50,
      child: ApplePayButton(
        paymentConfigurationAsset: 'payment_profile_apple_pay.json',
        onPaymentResult: onPaymentResult,
        paymentItems: paymentItems,
        style: ApplePayButtonStyle.white,
        margin: const EdgeInsets.only(top: 10),
        loadingIndicator: const CircularProgressIndicator(),
      ),
    );
  }
}
