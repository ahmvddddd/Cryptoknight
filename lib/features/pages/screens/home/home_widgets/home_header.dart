// ignore_for_file: prefer_const_constructors

import 'package:crypto_knight/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      radius: TSizes.borderRadiusLg,
      padding: EdgeInsets.all(TSizes.sm),
      backgroundColor: dark ? TColors.dark : Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Avatar
          Row(
            children: [
              Container(
                  width: 50,
                  height: 50,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: dark ? TColors.dark : Colors.white.withOpacity(0.7),
                  ),
                  child: Image.asset(
                    TImages.avatar,
                    fit: BoxFit.contain,
                  )),
              SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('Account 1',
                    style: Theme.of(context).textTheme.bodyMedium),
                Text('xyz12abcx5',
                    style: Theme.of(context).textTheme.labelSmall),
              ])
            ],
          ),
      
          //Icon
          GestureDetector(
              onTap: () => () {},
              child: Icon(
                Iconsax.scan,
                color: dark ? Colors.white : Colors.black,
                size: TSizes.iconMd,
              )),
        ],
      ),
    );
  }
}
