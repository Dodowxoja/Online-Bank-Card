import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:home/core/constants/color_const.dart';
import 'package:home/core/constants/url_const.dart';
import 'package:home/models/user_modes.dart';
import 'package:home/services/user_service.dart';
import 'package:home/widgets/my_text_style.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controllerId = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();

  List idApi = [];
  List emailApi = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: ColorConst.kPCPicker1,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: builder(),
                ),
                TextFormField(
                  controller: _controllerId,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Enter Your ID",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _controllerEmail,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: ColorConst.kPCDarkTheme,
                    fixedSize: const Size(223, 40),
                    side: const BorderSide(color: Colors.white),
                  ),
                  child: Text(
                    "Next",
                    style: MyTextStyle.textStyle(),
                  ),
                  onPressed: () {
                    singIn();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  FutureBuilder<List<UserModels>> builder() {
    return FutureBuilder(
      future: UserService.getUser(),
      builder: (context, AsyncSnapshot<List<UserModels>> snap) {
        if (!snap.hasData) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (snap.hasError) {
          return const Center(
            child: Text("INTERNET YO'Q"),
          );
        } else {
          var data = snap.data!;
          return ListView.builder(
            itemBuilder: (_, __) {
              idApi.add(data[__].id);
              emailApi.add(data[__].email);
              return Card(
                child: ListTile(
                  title: Text(data[__].id.toString()),
                  trailing: Text(data[__].email.toString()),
                ),
              );
            },
            itemCount: data.length,
          );
        }
      },
    );
  }

  singIn() {
    if (_formKey.currentState!.validate()) {
      for (var idpass in idApi) {
        if (idpass.toString() == _controllerId.text) {
          for (var emailpass in emailApi) {
            if (emailpass.toString() == _controllerEmail.text) {
              Navigator.pushReplacementNamed(
                context,
                '/home',
                arguments: [emailApi],
              );
              return true;
            }
          }
        }
      }
      showMyMessenger("Id yoki email noto'g'ri!", context);
    }
  }

  showMyMessenger(String text, BuildContext context) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text(text),
          behavior: SnackBarBehavior.floating,
        ),
      );

  // List<UserModels> _userModel = UserService.getUser().f

  Future<List<UserModels>> getUser() async {
    Response res = await Dio().get(UrlConst.baseUrl + '/users');
    return (res.data as List).map((e) => UserModels.fromJson(e)).toList();
  }
}
