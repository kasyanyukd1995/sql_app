import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin Paginator<TViewModel, TItem, S> on StateNotifier<S> {
  bool _hasMore = true;

  int get pageSize => getPageSize();
  int currentPageIndex = 1;

  PaginatorModel get paginatorModel => PaginatorModel(
        pageNumber: currentPageIndex,
        pageSize: pageSize,
      );

  final List<TViewModel> _itemsVM = [];
  final List<TItem> _items = [];

  ValueChanged<List<TViewModel>> get onItemsLoaded;
  List<TItem> get items => _items;
  List<TViewModel> get itemsVM => _itemsVM;

  void forceUpdateItems(List<TItem> listItems) {
    _items.clear();
    _itemsVM.clear();
    _items.addAll(listItems);
    _itemsVM.addAll(_items.where(isItemValid).map(mapItem));

    onItemsLoaded(_itemsVM);
  }

  Future<void> loadNewItems() async {
    if (_hasMore) {
      final portion = await fetchItems(currentPageIndex);

      if (portion.length < pageSize) {
        _hasMore = false;
      } else {
        currentPageIndex++;
      }

      _itemsVM.addAll(portion.where(isItemValid).map(mapItem));
      _items.addAll(portion.where(isItemValid));
      onItemsLoaded(_itemsVM);
    }
  }

  Future<void> reLoadItems() async {
    _hasMore = true;
    cleanItems();
    currentPageIndex = 1;
    loadNewItems();
  }

  void cleanItems() {
    _itemsVM.clear();
    _items.clear();
  }

  int getPageSize();

  TViewModel mapItem(TItem item);

  Future<List<TItem>> fetchItems(int offset);

  bool isItemValid(TItem item) => true;

  @mustCallSuper
  void resetPaginator() {
    _hasMore = true;
    _itemsVM.clear();
    _items.clear();
    currentPageIndex = 1;
  }

  @override
  Future<void> dispose() async {
    resetPaginator();
    super.dispose();
  }
}

class PaginatorModel {
  final int pageNumber;
  final int pageSize;

  PaginatorModel({
    required this.pageNumber,
    required this.pageSize,
  });
}
