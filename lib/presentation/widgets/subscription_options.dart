import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class SubscriptionOption extends StatelessWidget {
  final String title;
  final String price;
  final String description;
  final bool isSelected;
  final VoidCallback onSelect;
  final String? discount;
  final List<String>? details;
  final List<Color> colorsList;
  final bool isActive;

  const SubscriptionOption({
    Key? key,
    required this.title,
    required this.price,
    required this.description,
    required this.isSelected,
    required this.onSelect,
    this.discount,
    this.details,
    this.colorsList = const <Color>[
      TestTaskColors.primaryDarkBlueColor,
      Colors.black,
      Colors.black
    ],
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Stack(
        clipBehavior:
            Clip.none, // To allow the status to overflow the container

        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colorsList,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              color: Colors.white,
              borderRadius: roundedBorder15,
              border: isSelected
                  ? Border.all(
                      color: Colors.white,
                      width: 1,
                    )
                  : null,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Radio<bool>(
                      splashRadius: 5.0,
                      value: true,
                      groupValue: isSelected,
                      onChanged: (_) => onSelect(),
                      activeColor: TestTaskColors.primaryDarkBlueColor,

                      fillColor: WidgetStateProperty.all(
                          Colors.grey), // Color when unselected
                    ),
                    10.widthBox,
                    Column(
                      children: [
                        Text(
                          title,
                          style: titleTextStyle,
                        ),
                        Text(
                          description,
                          style: descTextStyle,
                        ),
                      ],
                    ),
                    const Spacer(),
                    if (discount != null)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            price,
                            style: titleTextStyle,
                          ),
                          5.heightBox,
                          Text(
                            discount!,
                            style: discountTextStyle,
                          ),
                        ],
                      )
                    else
                      Text(
                        price,
                        style: titleTextStyle,
                      ),
                  ],
                ),
                5.heightBox,
                if (details != null) ...[
                  10.heightBox,
                  ...details!.map(
                    (detail) => Row(
                      children: [
                        const Icon(
                          Icons.circle_rounded,
                          color: Colors.white,
                          size: 7,
                        ),
                        8.widthBox,
                        Text(
                          detail,
                          style: descTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ).paddingSymmetric(vertical: 26.h, horizontal: 30.h),
          ),
          if (isActive)
            Positioned(
              top: -20,
              right: -11,
              child: Container(
                padding: paddingV8H10,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: const Text("выгодно"),
              ).alignAtTopRight(),
            ),
        ],
      ),
    );
  }
}
