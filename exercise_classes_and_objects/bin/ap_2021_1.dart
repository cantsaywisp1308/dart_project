void main(List<String> args) {
  final wordMatch = WordMatch("aaaabb");
  print(wordMatch.scoreGuess("c"));
  //print(wordMatch.findBetterGuess("iss", "issipp"));
}

class WordMatch {
  String _secret;

  WordMatch(this._secret);

  int scoreGuess(String guess) {
    int score = 0;
    //if (guess == _secret) return guess.length * guess.length;
    for (int i = 0; i < _secret.length - guess.length + 1; i++) {
      //print(_secret.substring(i, i + guess.length));
      if (_secret.substring(i, i + guess.length).contains(guess)) {
        score++;
      }
    }
    return score * guess.length * guess.length;
  }

  String findBetterGuess(String guess1, String guess2) {
    if (scoreGuess(guess1) > scoreGuess(guess2)) {
      return guess1;
    } else {
      return guess2;
    }
  }
}
