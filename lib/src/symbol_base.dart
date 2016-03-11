library symbol.base;

Map<String, int> _nextIdMap = {};

Symbol makeSymbol({prefix: 's'}) {
  final nextId = _nextIdMap[prefix] ?? 0;
  _nextIdMap[prefix] = nextId + 1;

  return new Symbol('${prefix}${nextId}');
}

