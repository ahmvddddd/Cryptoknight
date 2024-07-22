// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'home_widgets/home_assets.dart';
import 'home_widgets/home_header.dart';
import 'home_widgets/home_transactions.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(TSizes.spaceBtwItems),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //header
                      SizedBox(height: TSizes.spaceBtwItems),
                      HomeHeader(),
      
                      //Balance
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      Text('Balance',
                          style: Theme.of(context).textTheme.bodyMedium),
                      Text(TTexts.accountBalance,
                          style: Theme.of(context).textTheme.headlineMedium),
      
                      //Transactions
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      HomeTransactions(),
      
                      //Assets
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      TSectionHeading(
                        title: 'Assets',
                        showActionButton: false,
                      ),
      
                      HomeAssets(),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
