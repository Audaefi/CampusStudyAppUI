import 'package:flutter/material.dart';
import 'package:huro/const/colors.dart';
import 'package:huro/widget/cart_empty.dart';
import 'package:huro/widget/cart_full.dart';


class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List products = [];
    return products.isEmpty
        ? Scaffold(body: CartEmpty())
        : Scaffold(
            bottomSheet: checkoutSection(context),
            appBar: AppBar(
              title: Text("Cart Items Count"),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete_rounded),
                )
              ],
            ),
            body: Container(
                margin: EdgeInsets.only(bottom: 60),
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext ctx, int index) {
                      return CartFull();
                    })),
          );
  }

  Widget checkoutSection(BuildContext ctx) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(colors: [
                      ColorsConsts.gradiendFStart,
                      ColorsConsts.gradiendFEnd,
                    ], stops: [
                      0.0,
                      0.7
                    ]),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Check Out',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Theme.of(ctx).textSelectionColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Text(
                'Total',
                style: TextStyle(
                    color: Theme.of(ctx).textSelectionColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'US \$179.0',
                //textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )),
    );
  }
}
