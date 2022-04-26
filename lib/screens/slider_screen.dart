import 'package:fl_componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {

     const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
   double _valueSlider = 100;
   bool _sliderBlocked = true;

  @override
  Widget build(BuildContext context) {
    

    return  Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Slider and Checks'),
        ),
      ),
      body:Column(
        children: [
          Slider.adaptive(
            activeColor: AppTheme.primary,
            min: 50,
            max: 400,
            value: _valueSlider,
            onChanged: (_sliderBlocked)? null : (value){
              
              setState(() {
                _valueSlider = value;
                       });
              
            }
            ),
            Checkbox(
              value: _sliderBlocked,
              onChanged: (value){
                setState(() {
                  _sliderBlocked = value ?? true;
                });
              }
              ),
              CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
               value: _sliderBlocked,
               onChanged: (value)=>setState(() {
                 _sliderBlocked = value ?? true;
               })
               ),
               Switch(
                 activeColor: AppTheme.primary,
                 value: _sliderBlocked,
                 onChanged: (value)=>setState(() {
                    _sliderBlocked = value;
                 })
                 ),
                 SwitchListTile(
                     activeColor: AppTheme.primary,
                     title: const Text('Habilitar Slider'),
                     value: _sliderBlocked,
                     onChanged: (value)=>setState(() {
                       _sliderBlocked = value;
                     })
                 ),
            const AboutListTile(
              icon: Icon(Icons.flutter_dash_outlined),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/3c2de0d3-f642-445f-9852-f3505837f06c/ddkh22y-e559a953-d67b-4c08-9e6f-f0237797cbd7.png/v1/fill/w_1024,h_1791,strp/son_goku_base_dbs_l_by_jaredsongohan_ddkh22y-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTc5MSIsInBhdGgiOiJcL2ZcLzNjMmRlMGQzLWY2NDItNDQ1Zi05ODUyLWYzNTA1ODM3ZjA2Y1wvZGRraDIyeS1lNTU5YTk1My1kNjdiLTRjMDgtOWU2Zi1mMDIzNzc5N2NiZDcucG5nIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.-eK1q2OmHVNAY8MokYER-q0Py_7SHhS8lTYAobEuzSE'),
                  fit: BoxFit.contain,
                  width: _valueSlider,
                  ),
              ),
            ), 
        ],
      ),
    );
  }
}