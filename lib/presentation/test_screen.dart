import 'package:flutter/material.dart';
import 'package:test_task/presentation/widgets/subscription_options.dart';
import 'package:uikit/uikit.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  String selectedPlan = "6 месяцев"; // Default selected plan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.grey,
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Выберите подписку",
              style: headerTextStyle,
            ).toCenter(),
            64.heightBox,
            // Subscription Options
            SubscriptionOption(
              isActive: false,
              colorsList: const [
                TestTaskColors.primaryDarkBlueColor,
                Colors.white12,
              ],
              title: "1 месяц",
              price: "1000₽",
              description: "Описание",
              isSelected: selectedPlan == "1 месяц",
              onSelect: () => _updateSelectedPlan("1 месяц"),
            ).paddingSymmetric(horizontal: 20),
            25.heightBox,
            SubscriptionOption(
              isActive: true,
              colorsList: const [
                Colors.black38,
                TestTaskColors.primaryDarkBlueColor,
              ],
              title: "6 месяцев",
              price: "10 000₽",
              description: "Описание",
              discount: "12 000₽",
              isSelected: selectedPlan == "6 месяцев",
              onSelect: () => _updateSelectedPlan("6 месяцев"),
              details: const [
                "что входит",
                "что входит",
                "что входит",
                "что входит",
              ],
            ).paddingSymmetric(horizontal: 20),
            21.heightBox,
            // Purchase Button

            GradientButton(
                child: Text(
                  "Купить",
                  style: titleTextStyle,
                ),
                onPressed: () {}),
            const Spacer(), // Terms and Restore Purchase
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _footerTextButton("terms of use", () {
                  // Handle terms of use action
                }),
                _footerTextButton("policy privacy", () {
                  // Handle privacy policy action
                }),
                _footerTextButton("Restore purchase", () {
                  // Handle restore purchase action
                }),
              ],
            ),
          ],
        ).paddingSymmetric(
          horizontal: 20.h,
          vertical: 30.h,
        ),
      ),
    );
  }

  void _updateSelectedPlan(String plan) {
    setState(() {
      selectedPlan = plan;
    });
  }

  TextButton _footerTextButton(String text, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: footerTextStyle,
      ),
    );
  }
}
