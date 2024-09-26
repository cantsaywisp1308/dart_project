void main(List<String> args) {}

mixin canPlay {
  bool isBonus();

  int getScore();

  int playManyTimes(int num);
}

class Level {
  final bool _goalReached;
  final int _getPoints;

  Level(this._goalReached, this._getPoints);
}

class Game with canPlay {
  final Level _levelOne;
  final Level _levelTwo;
  final Level _levelThree;
  final bool _isBonus;

  Game(this._levelOne, this._levelTwo, this._levelThree, this._isBonus);

  @override
  int getScore() {
    int score = 0;
    if (_levelOne._goalReached) {
      score += _levelOne._getPoints;

      if (_levelTwo._goalReached) {
        score += _levelTwo._getPoints;

        if (_levelThree._goalReached) {
          score += _levelThree._getPoints;
        }
      }
    }

    if (isBonus()) {
      score *= 3;
    }

    return score;
  }

  @override
  bool isBonus() {
    return _isBonus;
  }

  @override
  int playManyTimes(int num) {
    int highScore = 0;
    for (int i = 0; i < num; i++) {
      if (getScore() > highScore) {
        highScore = getScore();
      }
    }
    return highScore;
  }
}
