
import 'package:flutter/material.dart';
class DotesIndicator extends StatelessWidget {
bool isActive;
   DotesIndicator({super.key,required this.isActive});
  @override
  Widget build(BuildContext context) {
    return Container(
      width:isActive?32:8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive?Color(0xFF4EB7F2):Color(0xFFE8E8E8),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
class GenerateDotes extends StatelessWidget {
  final int curentIndex;
  const GenerateDotes({super.key, required this.curentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:List.generate(3, (index) {
        return DotesIndicator(isActive:index==curentIndex);
      },),
    ) ;

  }
}
