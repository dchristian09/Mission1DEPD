part of 'pages.dart';

class assignment2 extends StatefulWidget {
  const assignment2({super.key});
  static const routeName = '/assignment2';

  @override
  State<assignment2> createState() => _assignment2State();
}

class _assignment2State extends State<assignment2> {

  @override
  void initState() {
    super.initState();
    
  }

  final _loginKey = GlobalKey<FormState>();
  final ctrlFullName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhoneNumber = TextEditingController();
  final ctrlCity = TextEditingController();
  bool isHide = true;

  @override
  void dispose() {
    ctrlFullName.dispose();
    ctrlEmail.dispose();
    ctrlPhoneNumber.dispose();
    ctrlCity.dispose();
    super.dispose();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Booking Form"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _loginKey,
          child: Column(
            children: [
              SizedBox(height:32,),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Full Name",
                  prefixIcon: Icon(Icons.person)
                ),
                controller: ctrlFullName,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator:(value) {
                  return value.toString().length < 1
                  ? 'Please fill the form'
                  : null;
                },
              ),
              SizedBox(height:32,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email)
                ),
                controller: ctrlEmail,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator:(value) {
                  return !EmailValidator.validate(value.toString()) ? 'Email tidak valid!': null;
                },
              ),
              SizedBox(height:32,),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  prefixIcon: Icon(Icons.phone),
                ),
                controller: ctrlPhoneNumber,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator:(value) {
                  return value.toString().length < 7
                  ? 'Number at least 10 characters!'
                  : null;
                },
              ),
              SizedBox(height:32,),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "City",
                  prefixIcon: Icon(Icons.location_city),
                ),
                controller: ctrlCity,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator:(value) {
                  return value.toString().length < 1
                  ? 'Please fill the form'
                  : null;
                },
              ),
              SizedBox(height:32),
              ElevatedButton(
              onPressed: (){
                if(_loginKey.currentState!.validate()){
                  showAlertDialog(BuildContext context) {

                  // set up the button
                  Widget okButton = TextButton(
                    child: Text("OK"),
                    onPressed: () { 
                      Navigator.pushNamed(context, assignment1page.routeName);
                    },
                  );

                  // set up the AlertDialog
                  AlertDialog alert = AlertDialog(
                    title: Text("Booking Confirmation"),
                    content: Text("Name: "+ctrlFullName.text.toString()+"\nEmail: "+ctrlEmail.text.toString()+"\n Phone Number: "+ctrlPhoneNumber.text.toString()+"\n City: "+ctrlCity.text.toString()),
                    actions: [
                      okButton,
                    ],
                  );

                  // show the dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    },
                  );
                }
                showAlertDialog(context);
                }else{
                showAlertDialog(BuildContext context) {

                  // set up the button
                  Widget okButton = TextButton(
                    child: Text("OK"),
                    onPressed: () {
                      Navigator.of(context).pop();
                     },
                  );

                  // set up the AlertDialog
                  AlertDialog alert = AlertDialog(
                    title: Text("Booking Failed"),
                    content: Text("Please fill all form field"),
                    actions: [
                      okButton,
                    ],
                  );

                  // show the dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    },
                  );
                }
                showAlertDialog(context);
                }
              }, 
              child: Text("Book Now")
              )
            ],
          )
          ),
      ),
    );
  }
}