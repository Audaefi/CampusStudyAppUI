import 'package:flutter/material.dart';
import 'package:huro/const/colors.dart';
import 'package:huro/provider/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class CartFull extends StatefulWidget {
  const CartFull({Key? key}) : super(key: key);

  @override
  _CartFullState createState() => _CartFullState();
}

class _CartFullState extends State<CartFull> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Container(
      height: 135,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: const Radius.circular(16.0),
          topRight: const Radius.circular(16.0),
        ),
        color: Theme.of(context).backgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 130,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(''),
                fit: BoxFit.fill, //이미지 주소 넣기
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          'title',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(16.0),
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Icon(
                              Icons.delete,
                              color: Colors.red,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Price:'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '450\$',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Sub Total:'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '450\$',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: themeChange.darkTheme
                                ? Colors.brown
                                : Theme.of(context).accentColor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Ships Free',
                        style: TextStyle(
                            color: themeChange.darkTheme
                                ? Colors.brown
                                : Theme.of(context).accentColor),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(4.0),
                          onTap: () {},
                          child: Container(
                            child: Icon(
                              Icons.delete,
                              color: Colors.red,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 12,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.12,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              ColorsConsts.gradiendFStart,
                              ColorsConsts.gradiendFEnd,
                            ], stops: [
                              0.0,
                              0.7
                            ]),
                          ),
                          child: Text(
                            '154',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Spacer(),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(4.0),
                          onTap: () {},
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.delete,
                                color: Colors.green,
                                size: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
