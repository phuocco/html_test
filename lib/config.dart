import 'package:flutter/material.dart';
import 'package:flutter_html/style.dart';

import 'model/demo.dart';

Demo demo = Demo(
  authorName: "aaa",
  description: [
    "youtube:rVz5f-b_NKs",
    "youtube:0CtV6x5N8ic",
    "<p> other paragraph </p>"
  ],
  shortDescription: "aaa",
  price: "33",
);

const htmlData = """
<h1>Header 1</h1>
<h2>Header 2</h2>
<b> text bold </b>
<p> aasdasd </p
  <ol>
            <li>This</li>
            <li><p>is</p></li>
            <li>an</li>
            <li>
            ordered
            <ul>
            <li>With<br /><br />...</li>
            <li>a</li>
            <li>nested</li>
            <li>unordered
            <ol>
            <li>With a nested</li>
            <li>ordered list.</li>
            </ol>
            </li>
            <li>list</li>
            </ul>
            </li>
            <li>list! Lorem ipsum dolor sit amet.</li>
            <li><h2>Header 2</h2></li>
            <h2><li>Header 2</li></h2>
      </ol>
        <img alt='Google' height='100' width='50' src='https://mcpeaddons.com/wp-content/uploads/2020/04/new-mutant-creatures-addon_02.png' />
""";
Map<String, Style> style = {
  "html": Style(
    backgroundColor: Colors.black12,
//              color: Colors.white,
  ),
//            "h1": Style(
//              textAlign: TextAlign.center,
//            ),
  "h1": Style(fontSize: FontSize.xxLarge),
  "b": Style(
    fontSize: FontSize.medium,
    fontWeight: FontWeight.w900,
  ),

  "table": Style(
    backgroundColor: Color.fromARGB(0x50, 0xee, 0xee, 0xee),
  ),
  "tr": Style(
    border: Border(bottom: BorderSide(color: Colors.grey)),
  ),
  "th": Style(
    padding: EdgeInsets.all(6),
    backgroundColor: Colors.grey,
  ),
  "td": Style(
    padding: EdgeInsets.all(6),
  ),
  "var": Style(fontFamily: 'serif'),
  "img": Style(width: 300),
};
