part of 'pages.dart';

class assignment1page extends StatefulWidget {
  const assignment1page({super.key});

  @override
  State<assignment1page> createState() => _assignment1pageState();
}

class _assignment1pageState extends State<assignment1page> {

  bool buttonstate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mission 1"),
        centerTitle: false,
      ),
      body:Container(
        width:double.infinity,
        height:double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors:[
              Color.fromARGB(255, 111, 209, 255),
              Color.fromARGB(255, 252, 239, 239),
            ]
          )
        ),
        child: Column(
          children: [
            Flexible(
              flex:2,
              child: Stack(
                children: [
                  Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/atas.jpg')
                      )
                    )
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child:ElevatedButton(
                      child: Icon(Icons.favorite),
                      onPressed: (){
                        if(buttonstate == true){
                          buttonstate = false;
                        }else{
                          buttonstate = true;
                        }
                      }, 
                      style: ButtonStyle(
                        foregroundColor: 
                        MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states){
                            if (buttonstate == true){
                            return Colors.red;
                          }else{
                            return Colors.white;
                          }
                          }
                        ),
                      )
                  )
                  )
                ],
              )
              
            ),
            Flexible(
              flex:1,
              child:Container(
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.fromLTRB(5, 10, 10, 10),
                child: ListView(
                  shrinkWrap: true, 
                  scrollDirection: Axis.horizontal, 
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/2.jpg')
                        )
                      )
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(5, 5, 5, 5)),
                    Container(
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/3.jpg')
                        )
                      )
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(5, 5, 5, 5)),
                    Container(
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/4.jpg')
                        )
                      ) 
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(5, 5, 5, 5)),
                    Container(
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/1.jpg')
                        )
                      )
                    ),
                  ],
                  ),
              )
            ),
            
            Flexible(
              flex:4,
              child:Container(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      child: Text("Welcome to Golden Tulip Holland Batu",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 60, 5, 0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text("Hotel Golden Tulip Holland Resort bintang 5 terletak di jantung tempat rekreasi di Batu dengan akses mudah ke tempat rekreasi dan hiburan keluarga, dua tempat makanan & minuman, kolam renang, spa, pusat kebugaran, taman bermain anak-anak, fungsi dan fasilitas ruang pertemuan yang melayani hingga 2000 orang.\n\n" + "Resor kami, dengan 260 kamar & villa, terletak di gambaran hijau dengan udara pegunungan yang sejuk segar. Semua kamar & vila kami menyediakan balkon pribadi di mana Anda dapat memilih pemandangan kota atau gunung.\n\n"+ "Jl. Cherry No. 10, Panderman Hill, Batu 65314 MALANG, NR 3 km Dari pusat kota\n\n" + "Pemesanan: 001 803 0441 1395\n\n" + "Telepon hotel : +62 341 3302000\n\n" + "Alamat email: reservation@gthollandresortbatu.com",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,

                        )
                        )
                      ),
                    )
                  ],
                )
              ),

              
            ),
          ],
        )
      )
    );
  }
}