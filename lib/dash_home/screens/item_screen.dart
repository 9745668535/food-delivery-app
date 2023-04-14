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
    return ListView.separated(scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context,int index){
          return  Container(
            decoration: BoxDecoration(boxShadow: [
              Decorations.BoxShadowDecorations(context)
            ],
                color: Colors.white,borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10,bottom: 10),
              child: Text(index==0?"Starters":index==1?"Meals":index==2?"Deserts":index==3?"Beverges":"Beverges",style: StyleResource.headBlack(context, 10).copyWith(fontWeight: FontWeight.w400),),
            ),
          );
        }, separatorBuilder: (BuildContext context,int index){
          return Container(width: 20,);
        }, itemCount:10);
  }
}
