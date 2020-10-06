import 'package:flutter/material.dart';
import 'package:flutter_html/style.dart';

const htmlData = """
<h1>Header 1</h1>
<h2>Header 2</h2>
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
        <img alt='Google' src='https://mcpeaddons.com/wp-content/uploads/2020/04/new-mutant-creatures-addon_02.png' />
""";
Map<String, Style> style = {
  "html": Style(
    backgroundColor: Colors.black12,
//              color: Colors.white,
  ),
//            "h1": Style(
//              textAlign: TextAlign.center,
//            ),
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
};
