// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../common/widgets/texts/details_text.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class Coin extends StatelessWidget {
  const Coin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
          title: Text('Coin', style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true,
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.spaceBtwItems),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('\$71,290.09',
              style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text('+20%',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.green),
              ),
              
              SizedBox(height: TSizes.spaceBtwItems,),
              TRoundedImage(
                height: 280,
                imageUrl: TImages.chart,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('jan',
                style: Theme.of(context).textTheme.bodySmall,
                ),
                Text('jun',
                style: Theme.of(context).textTheme.bodySmall,
                )
              ],
              ),
              
              //Details
              SizedBox(height: TSizes.spaceBtwItems,),
              Column(
                children: [
                  DetailsText(
                    title: 'Rank',
                    details: '1',
                    showActionButton: false,
                  ),
                  DetailsText(
                    title: 'Market Cap',
                    details: '\$100B',
                    showActionButton: false,
                  ),
                  DetailsText(
                    title: 'Total Supply',
                    details: '\$80.34B',
                    showActionButton: false,
                  ),DetailsText(
                    title: 'List Date',
                    details: '1/12/2008',
                    showActionButton: false,
                  ),
                  DetailsText(
                    title: 'List Price',
                    details: '\$0.0005',
                    showActionButton: false,
                  ),
                  DetailsText(
                    title: 'ATH',
                    details: '\$71,650.23',
                    showActionButton: false,
                  ),
                  DetailsText(
                    title: 'ATL',
                    details: '\$0.0005',
                    showActionButton: false,
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}