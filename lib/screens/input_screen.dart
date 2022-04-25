import 'package:fl_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myKeyForm = GlobalKey<FormState>();

    final Map<String, String> valueForm = {
      "nombre"  : "Fernando Javier",
      "apellido": "Salva",
      "email"   : "xxavierargentino@hotmail.com",
      "password": "123456",
      "role"    : "admin"
    };
    return  Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Inputs y Forms'),
        ),
      ),
      body:SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
              key: myKeyForm,
              child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                  children: [
                    CustomInputField(helperText: 'solo se admite un texto',hintText: 'nombre del usuario',labelText: 'nombre de usuario', icon: Icons.person_add, suffixIcon: Icons.man, formProperty: 'nombre', formValues: valueForm ,),
                    const SizedBox(height: 30,),
                    CustomInputField(helperText: 'solo se admite un texto',hintText: 'apellido del usuario',labelText: 'apellido de usuario', icon: Icons.person_add, suffixIcon: Icons.man, formProperty: 'apellido', formValues: valueForm,),
                    const SizedBox(height: 30,),
                    CustomInputField(helperText: 'solo formato email',hintText: 'email del usuario',labelText: 'email', icon: Icons.email_outlined, suffixIcon: Icons.mail, keyboardType: TextInputType.emailAddress,textCapitalization: TextCapitalization.none,formProperty: 'email', formValues: valueForm),
                    const SizedBox(height: 30,),
                    CustomInputField(hintText: 'password del usuario',labelText: 'password', icon: Icons.password, suffixIcon: Icons.lock, obscureText: true, formProperty: 'password', formValues: valueForm),
                    const SizedBox(height: 30,),
                    DropdownButtonFormField<String>(
                      items: const [
                        DropdownMenuItem(
                          value: 'admin',
                          child: Text('Administrador')
                          ),
                          DropdownMenuItem(
                            value: 'normal',
                            child: Text('Normal')
                            )
                      ],
                      onChanged: (value){
                          print(value);
                          valueForm['role'] = value ?? 'admin';
                      }
                      ),
                    const SizedBox(height: 30,),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed:(){
                            FocusScope.of(context).requestFocus(FocusNode());
                            if(!myKeyForm.currentState!.validate()){
                              return;
                            }
                            print(valueForm);
                        },
                        child: const Center(
                          child: Text('Guardar'),
                        )
                        )
                            ),
                  const SizedBox(height: 30,)
                  ],
          
              ),
            ),
          ),
      )
    );
  }
}



























