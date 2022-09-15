import 'package:components_application/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firstName' : 'Williams',
      'lastName'  : 'Alvarez',
      'email'     : 'williamswaz18@gmail.com',
      'password'  : '123456',
      'role'      : 'Admin',
    };
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
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                   CustomTextFormField(
                    formProperty: 'firstName',
                    formValues: formValues,
                    keyboradType: TextInputType.text,
                    labelText: 'Name',
                    hintText: 'Type your name',
                    // suffixIcon: Icons.alternate_email_outlined,
                  ),
                  const SizedBox(height: 20),

                  CustomTextFormField(
                    formProperty: 'lastName',
                    formValues: formValues,
                    keyboradType: TextInputType.text,
                    labelText: 'Last Name',
                    hintText: 'Type your last name',
                    // suffixIcon: Icons.alternate_email_outlined,
                  ),
                  const SizedBox(height: 20),

                  CustomTextFormField(
                    formProperty: 'email',
                    formValues: formValues,
                    keyboradType: TextInputType.emailAddress,
                    labelText: 'Email',
                    hintText: 'Type your email',
                    suffixIcon: Icons.alternate_email_outlined,
                  ),
                  const SizedBox(height: 20),

                  CustomTextFormField(
                    formProperty: 'password',
                    formValues: formValues,
                    isPasswordFiled: true,
                    keyboradType: TextInputType.text,
                    labelText: 'Password',
                    hintText: 'Type your password',
                    suffixIcon: Icons.password_outlined,
                  ),
                  const SizedBox(height: 20),

                  DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(value: "admin", child: Text("Administrator")),
                      DropdownMenuItem(value: "dev", child: Text("Developer")),
                      DropdownMenuItem(value: "intern",child: Text("Internship"),),
                      DropdownMenuItem(value: "doc",child: Text("Doctor"),),
                    ],
                    onChanged: (value) {
                      formValues['role'] = value ?? "No role";
                    },
                  ),

                  const SizedBox(height: 30),
                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text("Guardar"),
                      ),
                    ),
                    onPressed:() {
                      ///Codigo para guardar el teclado luego de apretar el boton guardar del formulario
                      FocusScope.of(context).requestFocus(FocusNode());

                      if( !myFormKey.currentState!.validate() ){
                        print("Formulario no valido");
                      }

                      print(formValues);
                      // print(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
