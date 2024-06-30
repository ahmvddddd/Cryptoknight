// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class Tokens extends StatelessWidget {
  const Tokens(
      {super.key,
      required this.imageUrl,
      required this.text,
      required this.text2,
      required this.text3, 
      required this.color
      });

  final String imageUrl;
  final String text;
  final String text2;
  final String text3;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      backgroundColor: Colors.transparent,
      showBorder: true,
      borderColor: TColors.primary,
      padding: EdgeInsets.all(TSizes.sm),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TCircularContainer(
                height: 30,
                width: 30,
                padding: 4,
                child: Image.asset(
                  imageUrl,
                  height: 30,
                ),
              ),
              SizedBox(
                width: TSizes.sm,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          ),
          SizedBox(
            width: TSizes.sm,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                text2,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(color: color),
              ),
              Text(
                text3,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
