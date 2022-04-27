
import 'package:fl_componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
List<int> indices = [1,2,3,4,5,6,7,8,9,10];
ScrollController listviewController = ScrollController();
bool _isLoading = false;

@override
  void initState() {
     super.initState();
     listviewController.addListener(() {
       if((listviewController.position.pixels + 500) >= listviewController.position.maxScrollExtent){
       fetchData();
       
       }     

     });
  }

  Future fetchData() async{
    if(_isLoading) return;
    _isLoading = true;
    setState(() {

    });
    await Future.delayed(const Duration(seconds: 6));
    add5();
    _isLoading = false;
    setState(() {
      
    });
    if((listviewController.position.pixels + 100) <= listviewController.position.maxScrollExtent) return;
       listviewController.animateTo(
         listviewController.position.pixels + 120,
         duration: Duration(milliseconds: 300),
         curve: Curves.fastOutSlowIn);

  }

  void add5(){
    final ultimo = indices.last;
    indices.addAll(
    [1,2,3,4,5].map((e) => ultimo + e)
    );
    setState(() {
      
    });
  }

  Future<void> OnRefresh() async {
      await Future.delayed(Duration(seconds: 2));
      final last = indices.last ;
      indices.clear();
      indices.add(last + 1);
      add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
          RefreshIndicator(
            color: AppTheme.primary,
            onRefresh: OnRefresh,
            child: ListView.builder(
              controller: listviewController,
              itemCount: indices.length,
              itemBuilder: (BuildContext context, int index) {
                return  FadeInImage(
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                  placeholder: const AssetImage('assets/jar-loading.gif'),
                  image: NetworkImage('https://picsum.photos/500/300?image=${indices[index]}')
                  );
                  //print(listviewController.
              },
            ),
          ),
          if(_isLoading)
          Positioned(
            bottom: 40,
            left: (size.width * 0.5) -30,
            child: _LoadingIcon())
            
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.70),
        shape: BoxShape.circle
      ),
      padding: const EdgeInsets.all(10),
      child: CircularProgressIndicator(),

    );
  }
}
