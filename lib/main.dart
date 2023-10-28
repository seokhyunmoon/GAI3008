import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Subpage extends StatelessWidget {
  const Subpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffffffff),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Color(0xff212435),
          size: 24,
        ),
        actions: const [
          Icon(Icons.add_box, color: Color(0xff212435), size: 24),
        ],
      ),
      
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Scan Recipt',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payments),
            label: 'Send & Request',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Settings',
          ),
        ],
        currentIndex: 3,
        elevation: 0,
        iconSize: 25,
        selectedItemColor: const Color(0xff3a57e8),
        unselectedItemColor: const Color(0xff9e9e9e),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (int index) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Homepage()
            )
          );
        },
      ),
      
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 70, 0, 30),
            child:
              Image(
              image: AssetImage("assets/images/QR.png"),
              height: 150,
              width: 150,
              fit: BoxFit.scaleDown,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Text(
              "SeokHyun Moon",
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.normal,
                fontSize: 25,
                color: Color(0xff000000),
              ),
            ),
          ),
          Text(
            "Scan to pay @seokhyunmoon",
            textAlign: TextAlign.center,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 12,
              color: Color(0xff000000),
            ),
          ),
        ],
      ),
    );
  }
}


class _MyHomePageState extends State<Homepage> {
  int selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),

      /*
      Appbar
      */
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor:const Color(0xffffffff),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        leading: const Icon(
          Icons.account_circle_outlined,
          color: Color(0xff212435),
          size: 35,
        ),
        actions: const [
          Icon(Icons.search, color: Color(0xff212435), size: 24),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child:
                Icon(Icons.notifications, color: Color(0xff212435), size: 24),
          ),
        ],
      ),

      /*
      Bottom Navigation Bar
      */

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Scan Recipt',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payments),
            label: 'Send & Request',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Settings',
          ),
        ],
        currentIndex: selectedItemIndex,
        elevation: 0,
        iconSize: 25,
        selectedItemColor: const Color(0xff3a57e8),
        unselectedItemColor: const Color(0xff9e9e9e),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (int index) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Subpage()
            )
          );

        },
      ),

      /*
      Body
      */

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [

          /*
          상단 Row
          */
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(80, 10, 80, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      decoration: const BoxDecoration(
                        color:  Color(0xffffffff),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.zero,
                      ),

                      /*
                      이름 + Insights
                      */
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Hi SeokHyun,",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              color: Color(0xff000000),
                            ),
                          ),
                          Text(
                            "What do you want to do today?",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 12,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: IconButton(
                      icon: const Icon(Icons.insights),
                      onPressed: () {},
                      color: const Color(0xff9fc7ff),
                      iconSize: 35,
                    ),
                  ),
                ],
              ),
            ),
          ),
          /*
          하단 Row
          */
          
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [

                /*
                왼쪽 Column
                */

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [

                      //Checking Account Container

                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 130,
                        height: 70,
                        decoration: const BoxDecoration(
                          color:Color(0xffffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "\$12,939.25",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontStyle: FontStyle.normal,
                                fontSize: 18,
                                color: Color(0xff000000),
                              ),
                            ),
                            Text(
                              "Checking Account Balance",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 11,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Bill Pay Container

                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 130,
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xffffcece),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                          border:
                              Border.all(color: const Color(0x4d9e9e9e), width: 1),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(70, 10, 10, 50),
                              child: Icon(
                                Icons.history_edu,
                                color: Color(0xffff3d3d),
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "Bill Pay",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 23,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "Due on May 14th",
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 11,
                                  color: Color(0xffff3d3d),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Statement Container

                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 130,
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xffc8ffce),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                          border:
                              Border.all(color: const Color(0x4d9e9e9e), width: 1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(70, 10, 10, 25),
                              child: IconButton(
                                icon: const Icon(Icons.account_balance),
                                onPressed: () {},
                                color: const Color(0xff08d12c),
                                iconSize: 30,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "Statement",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 19,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "June 2020",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 11,
                                  color: Color(0xff08d12c),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "Available",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 11,
                                  color: Color(0xff08d12c),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                /*
                오늘쪽 Column
                */

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [

                      //Savings Account Container

                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 130,
                        height: 70,
                        decoration: const BoxDecoration(
                          color: Color(0xffffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "\$100,203.32",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontStyle: FontStyle.normal,
                                fontSize: 18,
                                color: Color(0xff000000),
                              ),
                            ),
                            Text(
                              "Savings Account Balance",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 11,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Rewards Container

                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 130,
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xfff0cfff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                          border:
                              Border.all(color: const Color(0x4d9e9e9e), width: 1),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(70, 10, 10, 50),
                              child: Icon(
                                Icons.sell,
                                color: Color(0xff764aff),
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "Rewards",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 23,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "12,324 Points",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 11,
                                  color: Color(0xff764aff),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Transfer Container

                      Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 130,
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xffcfe2ff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                          border:
                              Border.all(color: const Color(0x4d9e9e9e), width: 1),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(70, 10, 10, 38),
                              child: Icon(
                                Icons.compare_arrows,
                                color: Color(0xff1a3cff),
                                size: 33,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "Transfer",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 19,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "Send & Request",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 11,
                                  color: Color(0xff1a3cff),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "Funds",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 11,
                                  color: Color(0xff1a3cff),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}