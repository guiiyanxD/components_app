import 'package:components_application/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Inputs and Forms"),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10
            ),
            child: Column(
              children: [
                const CustomTextFormField(
                  keyboradType: TextInputType.text,
                  labelText: 'Name',
                  hintText: 'Type your name',
                  // suffixIcon: Icons.alternate_email_outlined,
                ),
                const SizedBox(height: 20),

                const CustomTextFormField(
                  keyboradType: TextInputType.text,
                  labelText: 'Last Name',
                  hintText: 'Type your last name',
                  // suffixIcon: Icons.alternate_email_outlined,
                ),
                const SizedBox(height: 20),

                const CustomTextFormField(
                  keyboradType: TextInputType.emailAddress,
                  labelText: 'Email',
                  hintText: 'Type your email',
                  suffixIcon: Icons.alternate_email_outlined,
                ),
                const SizedBox(height: 20),

                const CustomTextFormField(
                  isPasswordFiled: true,
                  keyboradType: TextInputType.text,
                  labelText: 'Password',
                  hintText: 'Type your password',
                  suffixIcon: Icons.password_outlined,
                ),
                const SizedBox(height: 30),

                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text("Guardar"),
                    ),
                  ),
                  onPressed:()=> {},)
              ],
            ),
          ),
        )
    );
  }
}
