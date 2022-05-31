import 'package:flutter/material.dart';
import 'package:demo/common/tools/Internationalizing_tools.dart';
import 'package:demo/common/tools/toast_tool.dart';
import 'package:demo/page/kitchen/viewModel/search_keyword_view_model.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  List<String> _keywords = [];

  @override
  void initState() {
    super.initState();
    SearchKeywordViewModel.getSearchKeywordModelData().then((value) {
      setState(() {
        _keywords = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // 不显示leading null
      automaticallyImplyLeading: false,
        titleSpacing: 10,
        title: _buildAppBarSearchView(context),
        actions: <Widget>[
          GestureDetector(
            onTap: (() {
              Navigator.pop(context);
            }),
            child: Container(alignment: Alignment.center, width: 70,child: Text(InternationalizingTool.s!.cancel, style: const TextStyle(color: Colors.red, fontSize: 20),),),
          ),
        ],
      ),
      body: _buildContentView(),
    );
  }

  Widget _buildAppBarSearchView(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(5.0)
      ),
      width: double.infinity,
      height: 40,
      child: Row(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Icon(Icons.search, color: Colors.grey,),
          ),
          Expanded(
            child: TextField(
              autofocus: true,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                isDense: true, //  hintText居中显示
                hintText: InternationalizingTool.s!.search_place_holder,
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w400),
                border: InputBorder.none
              ),
              onChanged: ((value) {
                ToastTool.showText("没有实现搜索 = $value");
              }),
            ),
          )
        ],
      ),
    );
  }

  _buildContentView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
          child: Text("流行搜索", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        ),
        Wrap(
          children: _keywords.map((e) {
            return GestureDetector(
              child: Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.shade300
                ),
                clipBehavior: Clip.antiAlias,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
                  child: Text(e),
                ),
              ),
              onTap: () => ToastTool.showText("点击"),
            );
          }).toList(),
        ),
      ],
    );
  }

//  _buildContentView() {
//    return CustomScrollView(
//      slivers: <Widget>[
//        SliverAppBar(
//          leading: Text('Floating'),
////          automaticallyImplyLeading: false,
//        ),
//        SliverGrid(delegate: SliverChildBuilderDelegate(
//                (BuildContext context, int index) {
//              return Container(child: Text("grid item $index"),
//                  color: Colors.red,
//                  alignment: Alignment.center);
//            }, childCount: 20
//        ),
//            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10)
//        )
//      ],
//    );
//  }


//  _buildContentView() {
//    return GridView.builder(
//        itemCount: _keywords.length,
//        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//            maxCrossAxisExtent: 80,
//            mainAxisSpacing: 10,
//            crossAxisSpacing: 10
//        ),
//        itemBuilder: ((BuildContext context, int index) {
//          return Container(
//              color: Colors.red,
//              alignment: Alignment.center,
//              child: Text("${_keywords[index]}")
//          );
//        })
//    );
//  }
}
