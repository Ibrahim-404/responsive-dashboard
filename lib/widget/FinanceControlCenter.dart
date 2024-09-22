import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/TextStyleInMyProject.dart';
import 'package:responsive_dash_board/model/CardBalanceDate.dart';
import 'package:responsive_dash_board/utils/App_images.dart';
import 'package:responsive_dash_board/widget/ActiveBalanceCard.dart';
import 'package:responsive_dash_board/widget/QuickInvoice.dart';
import 'package:responsive_dash_board/widget/SectionTitle.dart';
import 'package:responsive_dash_board/widget/SelectBalanceStatuse.dart';
import 'package:responsive_dash_board/widget/UnActiveBalanceCard.dart';

class FinanceControlCenter extends StatelessWidget {
  FinanceControlCenter({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpenses(),
        SizedBox(height: 10),
        QuickInvoice(),
      ],
    );
  }
}
List<String> Divisionoftheyear = ['Year', 'Month', 'Week', 'Day'];
class AllExpenses extends StatefulWidget {
  AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  int Selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child:SectionTitle(title: "All Expenses"),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 205, // Adjust this height as needed
            child: Row(
              children: CardBalanceDate.asMap().entries.map((entry) {
                int index = entry.key;
                if (index == 1) {
                  return Expanded(
                    //for take padding horizontal when the
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: SelectBalanceStatuse(
                          iconBalance: CardBalanceDate[index]['iconBalance'],
                          title: CardBalanceDate[index]['title'],
                          subTitle: CardBalanceDate[index]['subTitle'],
                          money: CardBalanceDate[index]['money'],
                          isSelected: index == Selected,
                          onTap: () {
                            setState(() {
                              Selected = index;
                            });
                          },
                        )),
                  );
                } else {
                  return Expanded(
                    child: SelectBalanceStatuse(
                      iconBalance: CardBalanceDate[index]['iconBalance'],
                      title: CardBalanceDate[index]['title'],
                      subTitle: CardBalanceDate[index]['subTitle'],
                      money: CardBalanceDate[index]['money'],
                      isSelected: index == Selected,
                      onTap: () {
                        setState(() {
                          Selected = index;
                        });
                      },
                    ),
                  );
                }
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

/*
  List.generate(CardBalanceDate.length, (index) {
                return Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SelectBalanceStatuse(
                      iconBalance: CardBalanceDate[index]['iconBalance'],
                      title: CardBalanceDate[index]['title'],
                      subTitle: CardBalanceDate[index]['subTitle'],
                      money: CardBalanceDate[index]['money'],
                      isSelected: index == Selected,
                      onTap: () {
                        setState(() {
                          Selected = index;
                        });
                      },
                    ),
                  ),
                );
              })
 */
