import 'dart:async';

void main(List<String> args) async {
  ReviewAnalysis reviews = ReviewAnalysis([
    Review(4, "Good!, Thx"),
    Review(3, "OK site"),
    Review(4, "Great!"),
    Review(2, "Poor! Bad."),
    Review(3, "")
  ]);
  // final averageRating = await reviews.getAverageRating();
  // print(averageRating);
  print(await reviews.getAverageRating());
  print(await reviews.collectComments());
}

mixin ReviewInfo {
  int getRating();

  String getComment();
}

class Review with ReviewInfo {
  final int _rating;
  final String _comment;

  Review(this._rating, this._comment);

  @override
  String getComment() {
    return _comment;
  }

  @override
  int getRating() {
    return _rating;
  }
}

class ReviewAnalysis {
  final List<Review> _allReviews;

  ReviewAnalysis(this._allReviews);
}

extension on ReviewAnalysis {
  Future<double> getAverageRating() async {
    double score = 0;
    for (final review in _allReviews) {
      score += review._rating;
    }
    return score / _allReviews.length;
  }

  Future<List<String>> collectComments() async {
    List<String> list = [];

    for (int i = 0; i < _allReviews.length; i++) {
      if (_allReviews[i]._comment.contains('!')) {
        list.add("$i-${_allReviews[i]._comment}");
      }
    }

    return list;
  }
}
