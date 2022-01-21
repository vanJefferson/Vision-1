import 'package:apple/Data/definition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card.dart';

class Info extends StatelessWidget {
  var _production;
  var _tender;

  Info(this._production, this._tender);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            showProdInfo(context);
          },
          child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
              child: defintion('Total Production ', _production)
          ),
        ),
        InkWell(
          onTap: () {
            showTenderInfo(context);
          },
          child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
              child: defintion('Total Tender ', _tender)
          ),
        ),
      ],
    );
  }
}
