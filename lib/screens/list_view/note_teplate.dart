import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class NoteTemplate extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 0.0),
          child: ListTile(
            title: Text(
              "Note Sample Title",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                  color: Colors.grey[900]),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                "Note Sample Subtitle here",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 17.0,
                    color: Colors.grey[500]),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.star_border,
                      color: Colors.grey[700],
                      size: 26.0,
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    GestureDetector(child: Icon(Icons.more_vert, color: Colors.grey[900], size: 28.0),onTapDown: (TapDownDetails details) {
                      _showPopup(context,details.globalPosition);
                    },),
                  ],
                ),
                SizedBox(
                  height: 11.0,
                ),
                Text(
                  "Oct 27,2019, 9:05",
                  style: TextStyle(color: Colors.grey[500], fontSize: 12.0),
                )
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey[300],
        )
      ],
    );
  }


  void _showPopup(BuildContext context,Offset offset) async {
    await showMenu(context: context, position: RelativeRect.fromLTRB(offset.dx,offset.dy,0,0), items:[
      PopupMenuItem(child: Row(
        children: <Widget>[
          Text('Delete',style: TextStyle(
            fontWeight: FontWeight.w600,color: Colors.grey[900],fontSize: 16.0
          ),),SizedBox(width: 5.0,),
          Icon(OMIcons.delete,color: Colors.grey[900],size: 25.0,)
        ],
      ),value: 'delete'),
      PopupMenuItem(child: Row(
        children: <Widget>[
          Text('Edit',style: TextStyle(
              fontWeight: FontWeight.w600,color: Colors.grey[900],fontSize: 16.0
          ),),SizedBox(width: 23.0,),
          Icon(OMIcons.edit,color: Colors.grey[900],size: 25.0,)
        ],
      ),value: 'edit')
    ]);
  }
}
