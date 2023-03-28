import 'package:easy_stepper/easy_stepper.dart';

import '../../resources/decorations.dart';
import '../../resources/style_resources.dart';

class ItemListScreen extends StatefulWidget {
  const ItemListScreen({Key? key}) : super(key: key);

  @override
  State<ItemListScreen> createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: ListView.separated(scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context,int index){
            return  Container(





              decoration: BoxDecoration(boxShadow: [
                Decorations.BoxShadowDecorations(context)
              ],
                  color: Colors.white,borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Icon(Icons.radio_button_on_sharp,color: Colors.lightGreen,size: 20,),
                  SizedBox(width: 5,),
                  Text("Veg",style: StyleResource.greyHead(context, 10),)
                ],
              ),

            );
          }, separatorBuilder: (BuildContext context,int index){
            return Container();
          }, itemCount:4),
    );
  }
}
