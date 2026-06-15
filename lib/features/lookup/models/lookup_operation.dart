enum LookupOperation {
  purchase,
  consume,
  transfer,
  count;

  String get title {
    switch (this) {
      case LookupOperation.purchase:
        return '选择物品（购买）';
      case LookupOperation.consume:
        return '选择物品（消耗）';
      case LookupOperation.transfer:
        return '选择物品（转移）';
      case LookupOperation.count:
        return '选择物品（清点）';
    }
  }

  String get path {
    switch (this) {
      case LookupOperation.purchase:
        return '/purchase';
      case LookupOperation.consume:
        return '/consume';
      case LookupOperation.transfer:
        return '/transfer';
      case LookupOperation.count:
        return '/count';
    }
  }
}
