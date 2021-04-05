import 'package:flutter/material.dart';
import 'package:untitled/api/cards.dart';
import 'package:untitled/authentication_layouts/form_Styles/styles.dart';
import 'package:untitled/authentication_layouts/form_Styles/textFornContainer.dart';


class AddCard extends StatefulWidget {
  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {

  CardRequest _cardRequest = CardRequest();

  final _key = GlobalKey<FormState>();
  String name;
  String digits;
  String expMonth;
  String expYear;
  String cardBrand; // todo make this a drop selector so user cant fuck it up
  // todo cards type necessary ?? credot debit

  @override
  Widget build(BuildContext context) {

    List<String> cardBrands = ["American Express", "Diners Club", "Discover",
    "JCB", "MasterCard", "UnionPay", "Visa", "Other"];

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
      child: Form(
        key: _key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Add A Card"),
            TextFormContainer(
              child: TextFormField(
                decoration: textInputDecoration("Name Of Card Holder", context),
                onChanged: (val) {
                  setState(() {
                    name = val;
                  });
                },
                validator: (val) =>
                val.isEmpty ? "Please enter the name on your card" : null,
              ),
            ),
            TextFormContainer(
              child: TextFormField(
                decoration: textInputDecoration("Card Numbers", context),
                onChanged: (val) {
                  setState(() {
                    digits = val;
                  });
                },
                validator: (val) => //Todo length validation
                val.isEmpty ? "Please enter the digits on your card" : null,
              ),
            ),
            // todo make nice possibly wrap children in container, validations
            Row(
              children: <Widget>[
                TextFormField(
                  decoration: textInputDecoration("Exp Month", context),
                  onChanged: (val) {
                    setState(() {
                      expMonth = val;
                    });
                  },
                  validator: (val) =>
                  val.isEmpty ? "Please enter the cards expiration month" : null,
                ), Text("/"),
                TextFormField(
                  decoration: textInputDecoration("Exp Year", context),
                  onChanged: (val) {
                    setState(() {
                      expYear = val;
                    });
                  },
                  validator: (val) =>
                  val.isEmpty ? "Please enter the cards expiration year" : null,
                ),
              ],
            ),
            PopupMenuButton(
                elevation: 16.0,
                color: Theme.of(context).primaryColor,
                child: Center(
                  child: Text("Card Brand ?"),
                ),
                itemBuilder: (context) {
                  return List.generate(cardBrands.length,
                      (index) => PopupMenuItem(
                          value: index,
                          child: Text(cardBrands[index])));
                },
                onSelected: (int index){
                  setState(() {
                    cardBrand = cardBrands[index];
                  });
                }),
          ],
        ),
      ),
    );
  }
}
