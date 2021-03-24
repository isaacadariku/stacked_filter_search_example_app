import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../main.dart';
import '../../shared/const_color.dart';
import '../../shared/widgets/search_textfield_widget.dart';
import 'local_list_viewmodel.dart';

///
class LocalListView extends StatelessWidget {
  ///
  const LocalListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LocalListViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: BrandColors.kPrimary,
        appBar: AppBar(
          title: const Text(MyApp.title),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SearchTextField(
              text: model.queryText,
              onChanged: model.searchBook,
              hintText: model.hintText,
            ),
            Expanded(
              child: model.isBusy
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: model.books.length,
                      itemBuilder: (context, index) {
                        final book = model.books[index];

                        return ListTile(
                          leading: Image.network(
                            book.urlImage,
                            fit: BoxFit.cover,
                            width: 50,
                            height: 50,
                          ),
                          title: Text(book.title),
                          subtitle: Text(book.author),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => LocalListViewModel(),
    );
  }
}
