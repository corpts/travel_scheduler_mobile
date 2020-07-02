import 'package:flutter/material.dart';

class SizedGrid extends StatelessWidget{
  final int rows;
  final int cols;
  final List<Widget> children;

  int horizontalSpacing;
  int verticalSpacing;

  MainAxisAlignment mainAxisAlignment;
  CrossAxisAlignment crossAxisAlignment;

  SizedGrid({
    @required this.cols,
    @required this.rows,
    @required this.children,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.horizontalSpacing = 0,
    this.verticalSpacing = 0,
  }){
    assert (children.length == rows*cols);
  }

  @override
  Widget build(BuildContext context) {
    List<Row> rows_l = [];
    for (int i = 0; i < rows; ++i)
      {
        rows_l.add(
          Row(
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: crossAxisAlignment,
            children: <Widget>[for (var j = 0; j < cols; ++j)
              Padding(
                padding: EdgeInsets.fromLTRB(
                    (j != 0) ? horizontalSpacing/2 : 0,
                    (i != 0) ? verticalSpacing/2 : 0,
                    (j != cols) ? horizontalSpacing/2 : 0,
                    (i != rows) ? verticalSpacing/2 : 0,
                ),
                child: children[i*cols+j],
              )
            ],
          )
        );
      }
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: rows_l,
    );
  }

}