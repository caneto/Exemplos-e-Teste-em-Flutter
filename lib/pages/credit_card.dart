import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: bottom),
        reverse: true,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12.0,12.0,12.0,0),
            child: Column(
              children: <Widget>[
                Card(
                  child: Stack(
                    children: <Widget>[
                      Image.asset("assets/cardcredit.png",fit: BoxFit.fill,),
                /*      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:16.0, horizontal: 8.0),
                              child: Text(
                                "**** **** **** 6543",
                                style: TextStyle(
                                    fontSize: 28.0,
                                    color: Colors.white
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "Expiry",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22.0
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "MM/YY",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50.0,
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "CVV",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22.0
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "****",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Card Holder",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.0
                              ),
                              textAlign: TextAlign.end,

                            ),

                          ],
                        ),
                      ),*/
                    ],
                  ),
                  elevation: 5.0,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  semanticContainer: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(),
                              ),
                              labelText: "Credit Card Number",
                              labelStyle: TextStyle(
                                  fontSize: 18.0
                              )
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(),
                              ),
                              labelText: "Credit Card Expiry Date",
                              labelStyle: TextStyle(
                                  fontSize: 18.0
                              )
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(),
                              ),
                              labelText: "Credit Card Code",
                              labelStyle: TextStyle(
                                  fontSize: 18.0
                              )
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(),
                              ),
                              labelText: "Credit Card Hodler Name",
                              labelStyle: TextStyle(
                                  fontSize: 18.0
                              )
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        FlatButton(
                          color: Colors.pink,
                          onPressed: (){},
                          shape: StadiumBorder(),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 12.0),
                            child: Text(
                              "Pay",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0
                              ),

                            ),
                          ),
                        )
                      ],
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}