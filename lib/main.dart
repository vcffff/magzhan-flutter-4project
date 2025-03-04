import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '2page': (context) => const LoginPage(),
        '3page':(context)=> const GridPage(),
        '4page':(context)=>const Finalpage(),
        '5page':(context)=>const Finalpage2(),
        '6page':(context)=>const Finalpage3()
      },
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Column(

              children: [

                Text(
                  'Welcome to',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30),
                ),
                Text(
                  'USED ZIP',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                ),

              ],
            ),
            const SizedBox(height: 30,),
            Center(
              child: SizedBox(
                width: 200,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {

                        Navigator.pushNamed(context, '2page');
                      },
                      child: Image.asset('assets/red_bag.jpg'),
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 50),child:
                    Align(alignment: Alignment.topCenter, child:
                    Text(
                      'Best used  trading anywhere in the world',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 9),
                    ),
                    ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override

  Widget build(BuildContext context) {


    return Scaffold(


      backgroundColor: Colors.white,
      body: Column(
        children: [


          Container(

            width:double.infinity,
            height: 80,
            color: Colors.red,

            alignment: Alignment.center,
            child:Center(
              child:Container(

                padding: const EdgeInsets.only(top: 24)
              ,child  :const Text(

              'USED ZIP',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,

                fontWeight: FontWeight.bold,
              ),

            ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          Image.asset(
            'assets/red_bag.jpg',
            height: 120,
          ),
          const SizedBox(height: 10),

          const Text(
            "Let's Sign in",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),

                fillColor: Colors.grey[200],
              ),
            ),
          ),
          const SizedBox(height: 15),Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(

              obscureText: true,
              decoration: InputDecoration(

                prefixIcon: const Icon(Icons.lock),
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                ),

                fillColor: Colors.grey[200],
              ),
            ),
          ),
          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {Navigator.pushNamed(context,'3page');},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text(
                'Sign in',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Divider(thickness: 1, indent: 20, endIndent: 10),
              ),
              Text('OR'),
              Expanded(
                child: Divider(thickness: 1, indent: 10, endIndent: 20),
              ),
            ],
          ),
          const SizedBox(height: 10,),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {Navigator.pushNamed(context, '3page');},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(140, 50),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  )
                ),
                ElevatedButton(
                  onPressed: () {Navigator.pushNamed(context, '3page');},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(140, 50),
                  ),
                  child: const Text(
                    'Password Reset',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),

const SizedBox(height: 70,),
          Image.asset(
            'assets/worldskills.png',
            height: 100,
          ),
          const SizedBox(height: 10),


        ],
      ),
    );
  }
}
class GridPage extends StatelessWidget {
  const GridPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.search_sharp, color: Colors.white),
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'Korea-GoYang',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(),
              child: Image.asset('assets/korea.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 190),
              child: Text(
                'Latest Items',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 180,

              child:GestureDetector( onTap:(){Navigator.pushNamed(context,'6page');}, child:  GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  String price;
                  if (index == 0) {
                    price = '\$7.000.000';
                  } else {
                    price = '\$589.000.00';
                  }
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black, style: BorderStyle.solid),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white10.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset('assets/red_bag.jpg', width: 80),
                              const Text(
                                'Iphone14',
                                style: TextStyle(fontWeight: FontWeight.w900),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'An apple mobile which is nothing like apple',
                                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                                ),
                              ),
                              Text(
                                price,
                                style: const TextStyle(fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),),
            const Padding(
              padding: EdgeInsets.only(right: 170),
              child: Text(
                'Your publications',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 160,
              child:GestureDetector(onTap:(){ Navigator.pushNamed(context, '4page');}, child:  GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  String price = '';
                  String model = '';
                  String link = '';


                  if (index == 0) {
                    price = '\$4.990.000';
                    model = 'Iphone9';
                    link = 'assets/iphone.jpeg';

                  } else if (index == 1) {
                    price = '\$7.000.000';
                    model = 'Iphone14';
                    link = 'assets/iphone.jpeg';

                  }
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black, style: BorderStyle.solid),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white10.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(link, width: 70),
                              Text(
                                model,
                                style: const TextStyle(fontWeight: FontWeight.w900),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'An apple mobile which is nothing like apple',
                                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                                ),
                              ),
                              Text(
                                price,
                                style: const TextStyle(fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              ),
            ),
            SizedBox(
              height: 160,
              child:GestureDetector(onTap:(){Navigator.pushNamed(context, '5page');}, child:  GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                ),
                itemBuilder: (context, index) {
                  String price = '';
                  String model = '';
                  String link = '';
                  if (index == 0) {
                    price = '\$4.990.000';
                    model = 'Samsung Galaxy Book';
                    link = 'assets/MacBook2.jpeg';
                  } else if (index == 1) {
                    price = '\$7.000.000';
                    model = 'Microsoft Laptop 4';
                    link = 'assets/MacBook.jpg';
                  }
                  return Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black, style: BorderStyle.solid),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white10.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset(link, width: 28),
                              Text(
                                model,
                                style: const TextStyle(fontWeight: FontWeight.w900),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'An apple mobile which is nothing like apple',
                                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                                ),
                              ),
                              Text(
                                price,
                                style: const TextStyle(fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],

                  );
                },

              ),
              ),

            ), Container(

              padding: const EdgeInsets.only(right: 20,),child:
            Align(
              alignment: Alignment.bottomRight, child:
            ClipRRect(borderRadius: BorderRadius.circular(30), child:

            FloatingActionButton(onPressed: (){},backgroundColor: Colors.redAccent,child: const Icon(Icons.add,color: Colors.white,),),

            ),
            ),
            ),



          ],
        ),
      ),
    );
  }
}
class Finalpage extends StatelessWidget {
  const Finalpage({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:IconButton(onPressed: (){Navigator.pushNamed(context, '3page');}, icon:const Icon(Icons.arrow_back,color: Colors.white,)),
        backgroundColor: Colors.red,
        toolbarHeight: 60,
        title: const Text('Iphone 9 ',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
        centerTitle: true,
      ),
      
      body:Padding(
      padding: const EdgeInsets.all(16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [Container(
    width: double.infinity,
    height: 200,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    ),
    child: Center(
      child:  Image.asset('assets/iphone.jpeg'),
    ),
    ),
    
    const SizedBox(height: 16),
    const Text(
    'iPhone 9',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    ),
    ),
    const SizedBox(height: 4),
    Text(
    'Brand: APPLE',
    style: TextStyle(
    fontSize: 16,
    color: Colors.grey[600],
    ),
    ),
    const SizedBox(height: 8),
    Text(
    'SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...',
    style: TextStyle(fontSize: 14, color: Colors.grey[800]),
    ),
    const Spacer(),

    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    const Text(
    '\$4,990.000',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    ),
    ),
    ElevatedButton(
    onPressed: () {
      Navigator.pushNamed(context,'3page');
    },
    style: ElevatedButton.styleFrom(

    padding:
    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    ),
    child: const Text(
    'Message',
    style: TextStyle(fontSize: 16),
    ),
    ),
    ],
    ),

]
    ),
    ),
    );
  }
}
class Finalpage2 extends StatelessWidget {
  const Finalpage2({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:IconButton(onPressed: (){Navigator.pushNamed(context, '3page');}, icon:const Icon(Icons.arrow_back,color: Colors.white,)),
        backgroundColor: Colors.blue,
        toolbarHeight: 60,
        title: const Text('Samsung Galaxy Book',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white),),
        centerTitle: true,
      ),

      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child:  Image.asset('assets/MacBook.jpg'),
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                'Samsung Galaxy Book',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Brand: APPLE',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...',
                style: TextStyle(fontSize: 14, color: Colors.grey[800]),
              ),
              const Spacer(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               const    Text(
                    '\$4,990.000',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,'3page');
                    },
                    style: ElevatedButton.styleFrom(padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    child:const Text(
                      'Message',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),

            ]
        ),
      ),
    );
  }
}
class Finalpage3 extends StatelessWidget {
  const Finalpage3({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:IconButton(onPressed: (){Navigator.pushNamed(context, '3page');}, icon:const Icon(Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Colors.yellowAccent,
        toolbarHeight: 60,
        title: const Text('BONUS!',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
        centerTitle: true,
      ),

      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child:  Image.asset('assets/red_bag.jpg'),
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                'BONUS FOR YOU!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Brand: APPLE',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...',
                style: TextStyle(fontSize: 14, color: Colors.grey[800]),
              ),
              const Spacer(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '\$4.990.000',
                    style: TextStyle(

                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.lineThrough,

                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                     Navigator.pushNamed(context,'3page');
                    },
                    style: ElevatedButton.styleFrom(

                      backgroundColor: Colors.red,

                      padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    child: const Text(
                      'FREE!',
                      style: TextStyle(fontSize: 16,color: Colors.white),
                    ),
                  ),
                ],
              ),

            ]
        ),
      ),
    );
  }
}