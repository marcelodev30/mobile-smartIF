import 'package:flutter/material.dart';
import 'package:smartif/data/controllers/login_controller.dart';
import 'package:smartif/data/models/login_models.dart';
import 'package:smartif/ui/components/text_label.dart';
import 'package:smartif/ui/page/login/design.page.dart';
import 'package:smartif/ui/page/page.dart';
import 'package:smartif/ui/shared/app_input_decoration.dart';
import 'package:smartif/ui/shared/app_text_style.dart';
import '../../../config/app_size.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  LoginModels loginodels = LoginModels.isEmpty();
  LoginController controller = LoginController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DesignInUpPage(
      dados: Column(
        children: [
          SizedBox(height: AppSize.spacer30HSizebox),
          Text('Login', style: AppTextStyle.textSize30W700),
          Form(
              child: Padding(
            padding: AppSize.paddingH25V15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const TextLebel(title: 'Matricula'),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: AppInputDecoration.defaultApplogin,
                  onChanged: (value) => loginodels.setLogin(value),
                ),
                const SizedBox(height: 15),
                const TextLebel(title: 'Senha'),
                TextFormField(
                  style: const TextStyle(color: Colors.black),
                  decoration: AppInputDecoration.senha,
                  obscureText: true,
                  onChanged: (value) => loginodels.setSenha(value),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Redefinir senha',
                            style: AppTextStyle.textSize18W700Subindo,
                          ))
                    ]),
                SizedBox(height: AppSize.spacer30HSizebox),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 42,
                      child: TextButton(
                          onPressed: () async {
                            await controller.login(loginodels);
                            Navigator.push(
                                // ignore: use_build_context_synchronously
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PageHome()));
                          },
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(66, 107, 255, 1),
                          )),
                          child: Text(
                            'Entra',
                            style: AppTextStyle.textSize18W600,
                          )),
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
