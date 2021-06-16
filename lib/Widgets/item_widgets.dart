import 'package:category_app/models/catalog.dart';
import 'package:flutter/material.dart';
class ItemWidget extends StatelessWidget {
    final Item item;

  const ItemWidget({Key key, @required this.item}) :assert(item!=null) ,super(key: key);//required here is necessary at this.item and also assert is required so that item is not equal to null.
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(),
          child: ListTile(
          
            onTap: (){},
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
        textScaleFactor: 1.5,     // agar .tostring use na kare to price jo int/num hai usko text joki string ke aandar use
        style: TextStyle(fontWeight: FontWeight.bold,
        color: Colors.deepPurple),
        ),                                    // nahi kar payenge. toString() function returns integer into String format so we can 
                                             // easily use the number directly as String data type.Original code to print 999 price
                                             // Text(item.price.toString()), we have made changes to print $too 999 ke pehle
                                             // yahan .toString jarrorat nahi hai. because we are takig it in bracket.
                                             //\$ jarrorri hai do baar $ kaam nahi karega without \


                                             
      
      
      
      
      ),
    );
  }
}

