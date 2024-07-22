import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../product_details/post_ad.dart';
import 'widgets/trade_ads.dart';

class Trade extends StatelessWidget {
  const Trade({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TAppBar(
            title: Text('Trade', style: Theme.of(context).textTheme.headlineMedium),
            showBackArrow: false,
          ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.spaceBtwItems,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
                color: TColors.primary
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Iconsax.chart, color: Colors.white, size: TSizes.iconSm),
                  Text('Crypto',style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.white))
                ],
              ),
            ),
      
                    Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
                color: TColors.primary
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Iconsax.dollar_square, color: Colors.white, size: TSizes.iconSm),
                  Text('Currency',style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.white))
                ],
              ),
            ),
      
            //Ad button
            const SizedBox(height: TSizes.md,),
            GestureDetector(
              onTap: () => Get.to((const PostAd())),
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
                  border: Border.all(
                    width: 1,
                    color: TColors.primary
                  ),
                  color: Colors.transparent
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Iconsax.add, color: TColors.primary, size: TSizes.iconMd),
                    Text('Post Ad',style: Theme.of(context).textTheme.labelSmall)
                  ],
                ),
              ),
            ),
                  ],
                ),
      
                //ADS 
                const SizedBox(height: TSizes.spaceBtwItems,),
                   const TradeAds(
                    trader: 'Swing Trader',
                    tradeText: 'Buy',
                    image: TImages.btc,
                    rate: '\$71,6521.93',
                    supply: '0.00551',
                   ),
      
                   const SizedBox(height: TSizes.spaceBtwItems,),
                   const TradeAds(
                    trader: 'BigXchange',
                    tradeText: 'Sell',
                    image: TImages.btc,
                    rate: '\$71,4551.93',
                    supply: '0.03251',
                   ),
      
                   const SizedBox(height: TSizes.spaceBtwItems,),
                   const TradeAds(
                    trader: 'Jackofalltrades',
                    tradeText: 'Buy',
                    image: TImages.btc,
                    rate: '\$71,73251.93',
                    supply: '0.00151',
                   ),
      
                   const SizedBox(height: TSizes.spaceBtwItems,),
                   const TradeAds(
                    trader: 'wfx',
                    tradeText: 'Buy',
                    image: TImages.btc,
                    rate: '\$71,5151.93',
                    supply: '0.02151',
                   ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

