void main(List<String> args) {
  List<String> list = ["the", "red", "fox", "the", "red"];
  final wordPairList = WordPairList(list);
  print(wordPairList.numMatches());
}

class WordPair {
  final String _first;
  final String _second;

  WordPair(this._first, this._second);

  String getFirst() {
    return _first;
  }

  String getSecond() {
    return _second;
  }
}

class WordPairList {
  List<WordPair> _allPairs = [];

  WordPairList(List<String> words) {
    _allPairs = [];
    for (int i = 0; i < words.length - 1; i++) {
      for (int j = i + 1; j < words.length; j++) {
        final wordPair = WordPair(words[i], words[j]);
        _allPairs.add(wordPair);
      }
    }
  }

  int numMatches() {
    int count = 0;
    for (WordPair pair in _allPairs) {
      if (pair.getFirst() == pair.getSecond()) {
        print(pair.getFirst() + ' ' + pair.getSecond());
        count++;
      }
    }
    return count;
  }
}
