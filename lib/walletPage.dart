import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class walletPage extends StatefulWidget{
  const walletPage ({super.key});

  @override
  State<walletPage> createState() => _walletPageState();
}

class _walletPageState extends State<walletPage>{

  double total_balance = 0.00;

  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        toolbarHeight: 200,
        leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.arrow_back_ios_new,
              color: Colors.white
            ),
        ),
        title: const Text('Wallet',
        style: TextStyle(
         color: Colors.white,
         fontSize: 20,
        ),
        ),
        centerTitle: true,
      ),
         body: Expanded(
          child: Container(
            color: Colors.teal[700],
            child: Container(
              padding: EdgeInsets.only(top: 50, bottom: 10, left: 40, right: 40),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total Balance',
                        style: TextStyle(
                         color: Colors.grey[700],
                         fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                      child: Text('\$${total_balance.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      ),
                      SizedBox(height: 40),
                      Text('Transactions',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      OutlinedButton(
                          onPressed: (){},
                          style: OutlinedButton.styleFrom(
                            shape: const CircleBorder(),
                            side: const BorderSide(
                              width: 1.0,
                              color: Colors.teal,
                            ),
                            minimumSize: const Size(70, 70),
                          ),
                          child: const Icon(Icons.add,
                            size: 60,
                            color: Colors.teal,
                          ),
                      ),
                      SizedBox(height: 10),
                      const Text('Add Transaction',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w200
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Stats',
            icon: Icon(Icons.bar_chart_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Wallet',
            icon: Icon(Icons.account_balance_wallet),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person_outline),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal[700],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}