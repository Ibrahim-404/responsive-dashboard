import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/TextStyleInMyProject.dart';
import 'package:responsive_dash_board/utils/App_images.dart';

class MyCard extends StatelessWidget {
  final String cardName="My-vesa card";
  final String ownerName="Ibraime";
  final String cardNumber='0100000000';
  final String expiryDate='2024/12';
  final String picCode='120';
  MyCard(
      {super.key,
        // required this.cardName,
        // required this.ownerName,
        // this.cardNumber,
        // required this.expiryDate,required this.picCode
        // required this.picCode
      });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 230,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF4EB7F2),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Assets.MyCard),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 25),
              child: ListTile(
                title: Text(
                  cardName,
                  style: AppStyle.styleRegular16(context).copyWith(color: Colors.white),
                ),
                subtitle:Text(
                  ownerName,style: AppStyle.styleMedium20(context),
                ),
                trailing:SvgPicture.asset(Assets.ImageInCard),

              ),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(cardNumber,style: AppStyle.styleSemiBold24(context).copyWith(color: Colors.white),),
                  SizedBox(
                    height:5,
                  ),           // SizedBox(height: 5),
                  Text("$expiryDate - $picCode",style: AppStyle.styleRegular16(context).copyWith(color: Colors.white),),
                ],
              ),
            ),
            Flexible(child: const SizedBox(height: 10)),

          ],
        ),
      ),
    );
  }
}
