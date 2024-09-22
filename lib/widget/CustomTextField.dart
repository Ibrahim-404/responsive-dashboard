import 'package:flutter/material.dart';
import 'package:responsive_dash_board/TextStyleInMyProject.dart';
import 'package:responsive_dash_board/model/moneyControlData.dart';

// class TextFieldAndUpperText extends StatelessWidget {
//   String title;
//   String hint;
//   IconData? icon;
//   TextFieldAndUpperText({super.key, required this.title, required this.hint, icon});
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 30,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: 5,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 30),
//             child: Text(title, style: AppStyle.styleSemiBold16),
//           ),
//           CustomTextField(hint: hint),
//         ],
//       ),
//     );
//   }
// }
class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hint, required this.title});

  final String hint;
  String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(title, style: AppStyle.styleSemiBold16),
        ),
        IntrinsicHeight(
          child: TextField(
            cursorColor: Colors.blue,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              filled: true,
              contentPadding: EdgeInsets.only(left: 30),
              // prefixIcon: Icon(Icons.search),
              fillColor: Color(0xFFFAFAFA),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFFAFAFA),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),

              hintStyle: AppStyle.styleRegular16
                  .copyWith(color: const Color(0xFFAAAAAA)),
              hintText: hint,
              // prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ],
    );
  }
}

class MoneyContorl extends StatelessWidget {
  const MoneyContorl({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                hint: 'Type Customer Name',
                title: 'Customer Name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTextField(
                hint: 'Type customer email',
                title: 'Customer Email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                hint: 'Type customer name',
                title: 'Item name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTextField(
                hint: 'USD',
                title: 'Item mount',
              ),
            )
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            AddMoreDetailsButton(),
            SizedBox(
              width: 16,
            ),
            CustomButton(),
          ],
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 45,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            backgroundColor: Color(0xFF4EB7F2),
          ),
          onPressed: () {},
          child: Text(
            'Send Money',
            style: AppStyle.styleSemiBold18.copyWith(
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}

class AddMoreDetailsButton extends StatelessWidget {
  AddMoreDetailsButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          alignment: Alignment.center,
          child: Text(
            'Add more details',
            style: AppStyle.styleSemiBold16.copyWith(color: Color(0xFF4EB7F2)),
          )),
    );
  }
}
