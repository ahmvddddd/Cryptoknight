import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../common/widgets/texts/details_text.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../personalization/screens/transactions/widgets/enter_amount_card.dart';

class Xchange extends StatelessWidget {
  const Xchange({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
          title: Text('Xchange', style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(TSizes.spaceBtwItems),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: TColors.primary),
            child: Text(
              'Proceed',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
      body:  Padding(
        padding: const EdgeInsets.all(TSizes.spaceBtwItems),
        child: Column(
          children: [
             
                //Acount Balance
                Padding(
                  padding: const EdgeInsets.all(TSizes.spaceBtwItems),
                  child: TRoundedContainer(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    width: 360,
                    backgroundColor: TColors.primary.withOpacity(0.8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Texts
                        Text(TTexts.accountBalance,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium),
                        Text(TTexts.accountText,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium),
                      ],
                    ),
                  ),
                ),
             
             const SizedBox(height: TSizes.spaceBtwItems),
                  const TSectionHeading(
                    title: 'Enter Amount',
                    showActionButton: false,
                  ),
            const SizedBox(height: TSizes.sm),
            const EnterAmount(),

            const SizedBox(height: TSizes.spaceBtwItems),
                  const TSectionHeading(
                    title: 'Details',
                    showActionButton: false,
                  ),

                  const DetailsText(
                    title: 'Max',
                    details: '\$1279.50',
                  ),
                  const DetailsText(
                    title: 'Min',
                    details: '\$10',
                  ),
                  const DetailsText(
                    title: 'Timeout',
                    details: '2 Hours',
                  ),
                  const DetailsText(
                    title: 'Payment Method',
                    details: 'Bank Transfer',
                  ),
            
          ]
        ),
      ),
    );
  }
}