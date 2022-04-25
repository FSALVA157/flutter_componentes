import 'package:fl_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
                                                                                                                                                                                                                        
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Card Widget')),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCard(),
          SizedBox(height: 30,),
          CustomCard2( urlImage: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a57d64f1-79a2-494c-8d3a-b3a2f3d69682/d5rizl4-a7ce76e3-f44b-48ae-a30d-3c87ae7a1e93.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2E1N2Q2NGYxLTc5YTItNDk0Yy04ZDNhLWIzYTJmM2Q2OTY4MlwvZDVyaXpsNC1hN2NlNzZlMy1mNDRiLTQ4YWUtYTMwZC0zYzg3YWU3YTFlOTMuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.MzO4vZQ4-5-JOUJ8KlyFjbEEtR-84Qf7jmUxFDLVdgs', imageName: "Nippur de Lagash"),
          SizedBox(height: 30,),
          CustomCard2( urlImage: 'https://images-na.ssl-images-amazon.com/images/I/A10s0+-3TqL.jpg', imageName: "Gilgamesh el Inmortal"),         
          SizedBox(height: 30,),
          CustomCard2( urlImage: 'https://1.bp.blogspot.com/-d3EOPojHezc/XtGgjfuKqAI/AAAAAAAB9SU/_AEeOUuGpWEDbgLKdKqMDFgGE7A8EhL_QCLcBGAsYHQ/s1600/Dago.jpg', imageName: "Dago"),         
          SizedBox(height: 30,),
          CustomCard2( urlImage: 'https://www.notaalpie.com.ar/wp-content/uploads/2021/10/historieta-Nippur-de-Galash-Telam.jpg'),                             
        ],
      ),
    );
  }
}

