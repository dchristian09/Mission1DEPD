part of 'pages.dart';

class Week3Page extends StatefulWidget {
  const Week3Page({super.key});

  @override
  State<Week3Page> createState() => _Week3PageState();
}

class _Week3PageState extends State<Week3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Week 3"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Flexible(
              flex: 2, 
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black54,
                child: Text("Week 1",
                textAlign: TextAlign.center,
                style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold
                    ),
                  )
                )
              ),
            Flexible(
              flex: 3, 
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/gambar.png')
                  )
                ),
                child: ElevatedButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.heart_broken),
                  label: Text('')
                )
                )
              ),
            Flexible(
              flex: 4, 
              child: Container(
                color: Color(0xFFFF5555),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Image.asset(
                      'assets/images/gambar.png',
                      fit: BoxFit.fitWidth,),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: ElevatedButton.icon(
                      onPressed: (){},
                      icon: Icon(Icons.heart_broken),
                      label: Text(''),
                    )
                    ),
                    
                  ],
                )
                )
              ),
          ]
          ),
      ),
    );
  }
}