// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/tokens.dart';
import 'widgets/top_gainers.dart';

class Crypto extends StatelessWidget {
  const Crypto({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TAppBar(
            title: Text('Crypto', style: Theme.of(context).textTheme.headlineMedium),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(TSizes.spaceBtwItems),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Search bar
                      TSearchContainer(text: 'Search', showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
      
                      //Top Gainers
                      SizedBox(height: TSizes.spaceBtwItems,),
                      TSectionHeading(title: 'Top', showActionButton: false,),
      
                      SizedBox(height: TSizes.spaceBtwItems,),
                      TopGainers(),
      
                      //Top Gainers
                      SizedBox(height: TSizes.spaceBtwItems,),
                      TSectionHeading(title: 'Tokens', showActionButton: false,),
      
                      SizedBox(height: TSizes.spaceBtwItems,),
                      Tokens(imageUrl: TImages.usd, color: Colors.green, text: 'USDT', text2: '\$7,595.01', text3: '-0.93'),
      
                      SizedBox(height: TSizes.spaceBtwItems,),
                      Tokens(imageUrl: TImages.sol, color: Colors.red, text: 'SOL', text2: '\$4,781.12', text3: '-0.07'),
      
                      SizedBox(height: TSizes.spaceBtwItems,),
                      Tokens(imageUrl: TImages.xrp, color: Colors.green, text: 'XRP', text2: '\$4,136.33', text3: '+0.83'),
      
                      SizedBox(height: TSizes.spaceBtwItems,),
                      Tokens(imageUrl: TImages.btc, color: Colors.green, text: 'BTC', text2: '\$34,451.01', text3: '+1.43'),
      
                      SizedBox(height: TSizes.spaceBtwItems,),
                      Tokens(imageUrl: TImages.eth, color: Colors.green, text: 'ETH', text2: '\$15,350.10', text3: '+1.04'),
      
                    ],
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }
}