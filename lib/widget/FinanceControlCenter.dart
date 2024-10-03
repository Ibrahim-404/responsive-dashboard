import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/CardBalanceDate.dart';
import 'package:responsive_dash_board/widget/QuickInvoice.dart';
import 'package:responsive_dash_board/widget/SectionTitle.dart';
import 'package:responsive_dash_board/widget/SelectBalanceStatuse.dart';
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
    margin: EdgeInsets.only(bottom: 10),
    height: 205,
    child: Row(
      children: CardBalanceDate.asMap().entries.map((entry) {
        int index = entry.key;
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 5),
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
      }).toList(),
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
