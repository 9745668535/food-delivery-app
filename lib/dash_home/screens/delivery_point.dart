import 'package:easy_stepper/easy_stepper.dart';

import '../../resources/color_resource.dart';
import '../../resources/style_resources.dart';

class DeliveryPoint extends StatefulWidget {
  const DeliveryPoint({Key? key}) : super(key: key);

  @override
  State<DeliveryPoint> createState() => _DeliveryPointState();
}

class _DeliveryPointState extends State<DeliveryPoint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorResource.greyLightBody,
      appBar: AppBar(leadingWidth: 10,
      centerTitle: true,
      elevation: 0,
      backgroundColor: ColorResource.greyLightBody,
      title: Text("Select a delivery point",style: TextStyle(color: Colors.black,fontSize: 18),),
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Icon(Icons.arrow_back_ios_new,color: Colors.black54,size: 17),
      ),

    ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,

              decoration: BoxDecoration( boxShadow: [
                BoxShadow(
                    spreadRadius: 2,
                    color: Colors.black.withOpacity(0.05), //New
                    blurRadius: 7)
              ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  hintStyle: StyleResource.greyHead(context, 14).copyWith(color: ColorResource.grey),
                  hintText: 'Search for area,Postal code...',
                  prefixIcon:Icon(Icons.search_sharp,color: ColorResource.orangeButtton,),

                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 40,

              decoration: BoxDecoration( boxShadow: [
                BoxShadow(
                    spreadRadius: 2,
                    color: Colors.black.withOpacity(0.05), //New
                    blurRadius: 7)
              ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  hintStyle: StyleResource.greyHead(context, 14).copyWith(color: ColorResource.grey),
                  hintText: 'Use current location',
                  prefixIcon:Icon(Icons.location_on,color: ColorResource.orangeButtton,size: 18,),
                  suffixIcon:Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,),

                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Current delivery point",style: TextStyle(color: Colors.black,fontSize: 15),),
            SizedBox(height: 10,),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration( boxShadow: [
                BoxShadow(
                    spreadRadius: 2,
                    color: Colors.black.withOpacity(0.05), //New
                    blurRadius: 7)
              ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Trasaco hotel,behind navrongo campus"),
                  ))
            ),

          ],
        ),
      ),
    );
  }
}
