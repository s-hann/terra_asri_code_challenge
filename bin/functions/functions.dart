// case 1
int calculateDiagonalSum(int gridSize) {
  final totalNumber = gridSize * gridSize;
  int result, leap, cornerCounter, i;

  if (gridSize % 2 == 0) {
    /*  even number pattern
      sample: 4 x 4
      7   8   9   10			
      6	  1	  2	  11
      5	  4	  3	  12
      16	15	14	13
    
      7 + 1 + 3 + 13 = 24
      10 + 2 + 4 + 16 = 32
      24 + 32 = 56

      pattern: 1 + 2 + 3 + 4 + 7 + 10 + 13 + 16
    */

    result = 0;
    leap = 1;
    cornerCounter = 0;
    i = 1;
  } else {
    /*  odd number pattern
      sample: 5 x 5
      21   22   23  24  25
      20	 7	  8 	9   10
      19   6	  1	  2	  11
      18	 5	  4	  3 	12
      17	 16	  15	14	13
    
      21 + 7 + 1 + 3 + 13 = 45
      25 + 9 + 5 + 17 = 56
      45 + 56 = 101

      pattern: 1 + 3 + 5 + 7 + 9 + 13 + 17 + 21 + 25
    */

    result = 1;
    leap = 2;
    cornerCounter = 0;
    i = 3;
  }

  while (i <= totalNumber) {
    result += i;
    cornerCounter += 1;
    if (cornerCounter == 4) {
      cornerCounter = 0;
      leap += 2;
    }
    i += leap;
  }
  return result;
}

// case 3
bool isPalindrome(String? word) {
  // validate if the string is not less than or equal to '1'
  if (word == null || word.length <= 1) {
    return false;
  }

  // case insensitive
  word = word.toLowerCase();

  while (word!.length > 1) {
    // if not palindrome, return false
    if (word[0] != word[word.length - 1]) return false;

    // else, remove the first and last letter
    word = word.substring(1, word.length - 1);
  }

  return true;
}
