part of 'pages.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int angka = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App")
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(angka.toString(), style: TextStyle(fontSize: 42),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      angka = angka-1;
                    });
                  },
                  child: Text("-")
                  ),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      angka = angka+1;
                    });
                  },
                  child: Text("+")
                  ),
              ],
              )
          ],
        ) 
      ),
    );
  }
}