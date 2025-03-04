Container(
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