import 'package:customised_alert/AlertButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertBox extends StatefulWidget {
  String mainTitle;
  TextStyle longStyle;
  TextStyle shortStyle;
  String shortTitle;
  String longTitle;
  String imageUrl;
  List<AlertButton> buttons;

  AlertBox({
    this.mainTitle,
    this.shortStyle,
    this.longStyle,
    this.shortTitle,
    this.longTitle,
    this.imageUrl,
    this.buttons,
  });

  @override
  _AlertBoxState createState() => _AlertBoxState();
}

class _AlertBoxState extends State<AlertBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Text(widget.mainTitle ?? 'عنوان'),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    widget.imageUrl ??
                    'assets/images/1.jpg',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                widget.shortTitle ?? 'متن کوتاه',
                style: widget.shortStyle ??
                    TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ),
            Text(
              widget.shortTitle ??
                  'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است',
              style: widget.longStyle ??
                  TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 10,),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                childAspectRatio: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                crossAxisCount: 3,
                children: widget.buttons ?? [AlertButton()],
              ),
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
