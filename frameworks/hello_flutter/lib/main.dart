import 'package:flutter/material.dart';
/*
* Flutter UI is built out of widgets
* Widgets describe what their view should look like given their current configuration or state
* When a widgets state changes, the widget rebuilds it's description
* runApp() function takes the given Widget and makes it root of the widget tree
* Authoring new widgets involves creating subclasses  of StatelessWidget or StatefulWidget
* A widgets main job is to implement a build() function, which describes the widget in terms of other lower-level widgets
* The framework builds the widgets in turn until the process bottoms out in widgets that represent the underlying RenderObject, which computes and describes the geometry of the widget
* */

var minimalApp = runApp(
  /*
  * Here the widget tree consists of two widgets Center widget and it's child, the text widget
  * The framework forces the root widget to cover the screen
  * In this instance the text direction must be specified
  * */
    const Center( //Center widget
        child: Text(
          'Fuck Society',
          textDirection: TextDirection.ltr,
        )
    )
);

/*  Some Basic Widgets
* Text
* Row, Column
* Stack
* Container
* */

//        TEXT WIDGET
/*
* The text widget displays a string of text with single style
* The layout contraints determine whether the string breaks or is in a single line
* The style argument is is optional, when omitted the text will use the style from the closest enclosing DefaultTextStyle
* TextStyle.inherit property -> bool; determines if style should be inherited
* TextDirection property has to be specified unless inside the MaterialApp widget is used
* Using Text.rich constructor, the Text widget can display a paragrapght with differently styled TextSpans
**  Interactivity
*
* */
const String name = 'Weird User';
var text = runApp(
  const Text(
    "Welcome to my world, $name",
    style: TextStyle(fontWeight: FontWeight.bold),
    overflow: TextOverflow.ellipsis,
    textAlign: TextAlign.center,
    textDirection: TextDirection.ltr,
  )
);

var richText = runApp(
  const Text.rich(
    TextSpan(
      text: "You just made a whole", //Default text style
      children: <TextSpan>[
        TextSpan(text: 'huge upgrade',style: TextStyle(fontStyle: FontStyle.italic )),
        TextSpan(text: ' $name', style: TextStyle(fontWeight: FontWeight.bold))
      ],
    ),
    textDirection: TextDirection.ltr,
  )
);

/*      FLEX WIDGETS
*      Row
* A widget that display sits children in a horizontal array
* To cause a child expand and fill the available horizontal space, wrap the child in an Expanded widget
* Row widget doesn't scroll, use list view to scroll
# Place only number of children in a row that fits the available room
* If only one child, use Align or Center to position child
* */

var row = runApp(
  Row(
    children: const <Widget>[
      Expanded(
          child: Text(
            'Deliver features faster',
            textAlign: TextAlign.center,
          )
      ),
      Expanded(
          child: Text(
            'Craft beautiful UIs',textAlign: TextAlign.center,
          )
      ),
      Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: FlutterLogo(),
          )
      )
    ],
  )
);
void main(){
  //minimalApp;
  //text;
  richText;
  //row;
}