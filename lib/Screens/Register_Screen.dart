import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:school_management_app/Screens/Login_Screen.dart';
// import 'package:school_management_app/Screens/Navigation_Screen.dart';
import 'package:tutee_app/Screens/Login_Screen.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  // Widget build(BuildContext context) {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController bioController = TextEditingController();

  // File? _imageFile;
  String uploadedPath = "";
  // late XFile _image;
  // ImagePicker imagePicker = ImagePicker();
  bool _isLoading = false;

  void saveUser(uid) {
    // UserDatabase.addUser(
    //   userId: uid,
    //   userName: nameController.text,
    //   bio: bioController.text,
    //   userEmail: emailController.text,
    //   contact: contactController.text,
    //   img: uploadedPath,
    // );
  }

  selectImage() async {
    // await showModalBottomSheet(
    //   context: context,
    //   builder: (context) => BottomSheet(
    //     builder: (context) => Column(mainAxisSize: MainAxisSize.min, children: [
    //       ListTile(
    //           leading: Icon(Icons.camera),
    //           title: Text("Camera"),
    //           onTap: () {
    //             Navigator.of(context).pop();
    //             imagePickerMethod(ImageSource.camera);
    //           }),
    //       ListTile(
    //           leading: Icon(Icons.filter),
    //           title: Text("Gallery"),
    //           onTap: () {
    //             Navigator.of(context).pop();
    //             imagePickerMethod(ImageSource.gallery);
    //           })
    //     ]),
    //     onClosing: () {},
    //   ),
    // );
  }

  // imagePickerMethod(ImageSource source) async {
  //   var pic = await imagePicker.pickImage(source: source);
  //   if (pic != null) {
  //     // setState(() {
  //     //   _image = XFile(pic.path);
  //     // });
  //   }
  //   uploadImage(); // image upload function
  // }

  void uploadImage() {
    // String imageFileName = DateTime.now().millisecondsSinceEpoch.toString();
    // final Reference storageReference =
    //     FirebaseStorage.instance.ref().child('Images').child(imageFileName);
    // final UploadTask uploadTask = storageReference.putFile(File(_image.path));
    // uploadTask.snapshotEvents.listen((event) {
    //   setState(() {
    //     _isLoading = true;
    //   });
    // });
    // uploadTask.then((TaskSnapshot taskSnapshot) async {
    //   uploadedPath = await uploadTask.snapshot.ref.getDownloadURL();
    //   print(uploadedPath);

    //   setState(() {
    //     _isLoading = false;
    //   });
    // }).catchError((error) {});
  }

  @override
  Widget build(BuildContext context) {
    // final authService = Provider.of<AuthService>(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.deepPurple[400],
            // image: DecorationImage(
            //   image: AssetImage('../assets/images/Register.jpg'),
            //   fit: BoxFit.cover,
            // ),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.black54,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "../assets/images/Logo.png",
                  width: 100,
                  height: 100,
                ),
                Text(
                  'School',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                //   child: Column(
                //     children: [
                //       ListView(
                //         shrinkWrap: true,
                //         children: <Widget>[
                //           _imageFile != null
                //               ? Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: <Widget>[
                //               ClipRRect(
                //                 borderRadius:
                //                 BorderRadius.all(Radius.circular(10)),
                //                 child: Container(
                //                   width: MediaQuery.of(context).size.width -
                //                       20,
                //                   child: Image.file(
                //                     _imageFile!,
                //                     fit: BoxFit.fitWidth,
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           )
                //               : GestureDetector(
                //             onTap: () {
                //               selectImage();
                //             },
                //             child: Card(
                //               elevation: 2,
                //               child: Container(
                //                 alignment: Alignment.center,
                //                 width: MediaQuery.of(context).size.width,
                //                 height:
                //                 MediaQuery.of(context).size.height * .3,
                //                 child: _isLoading == false
                //                     ? Expanded(
                //                   child: uploadedPath == ""
                //                       ? Column(
                //                     mainAxisAlignment:
                //                     MainAxisAlignment
                //                         .center,
                //                     children: [
                //                       Icon(
                //                         Icons
                //                             .cloud_upload_outlined,
                //                         color: Colors.redAccent,
                //                         size: 100,
                //                       ),
                //                       Padding(
                //                         padding: EdgeInsets
                //                             .symmetric(
                //                             vertical: 5),
                //                         child: Text(
                //                           "Upload Image",
                //                           style: TextStyle(
                //                               fontSize: 22),
                //                         ),
                //                       ),
                //                       Padding(
                //                         padding: EdgeInsets
                //                             .symmetric(
                //                             vertical: 5),
                //                         child: Text(
                //                             "click here for upload image"),
                //                       )
                //                     ],
                //                   )
                //                       : Image(
                //                       image: NetworkImage(
                //                           uploadedPath)),
                //                 )
                //                     : CircularProgressIndicator(
                //                   color: Colors.red,
                //                 ),
                //                 // child: Image.asset(
                //                 //   'assets/images/upload.png',
                //                 //   fit: BoxFit.cover,
                //                 // ),
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextField(
                    controller: nameController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.blueAccent,
                          width: 0.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 0.0,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.supervised_user_circle_outlined,
                        color: Colors.white,
                      ),
                      hintText: 'Name',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextField(
                    controller: bioController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.blueAccent, width: 0.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 0.0),
                      ),
                      prefixIcon: Icon(
                        Icons.assignment_outlined,
                        color: Colors.white,
                      ),
                      hintText: 'Bio',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextField(
                    controller: emailController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.blueAccent, width: 0.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 0.0),
                      ),
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.blueAccent, width: 0.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 0.0),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextField(
                    controller: contactController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.blueAccent,
                          width: 0.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 0.0,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      hintText: 'Contact',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () async {
                      // await authService
                      //     .createUserWithEmailAndPassword(
                      //         emailController.text, passwordController.text)
                      //     .then((value) {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => Navigation(),
                      //   ),
                      // );
                      //   final userId = FirebaseAuth.instance.currentUser!.uid;
                      //   saveUser(userId);
                      Fluttertoast.showToast(
                        msg: "User Registered Successfully!!",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                      );
                      // }).catchError((error) {
                      //   showDialog(
                      //       context: context,
                      //       builder: (con) {
                      //         return AlertDialog(
                      //           title: Text("Error"),
                      //           content: Text(error.toString()),
                      //         );
                      //       });
                      // });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.58,
                      height: 50,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 55,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blueAccent,
                              Colors.blue.shade700,
                              Colors.blue.shade800,
                              Colors.blue.shade900,
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.3,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.blue.shade100,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
