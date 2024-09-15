void main() {
  String str1 = "I am";
  String str2 = "Happy";

  String concatenated = str1 + " " + str2;
  print("Concatenated: $concatenated");

  String interpolated = "$str1, $str2!";
  print("Interpolated: $interpolated");

  String substring = concatenated.substring(0, 5);
  print("Substring: $substring");

  String upper = concatenated.toUpperCase();
  String lower = concatenated.toLowerCase();
  print("Uppercase: $upper");
  print("Lowercase: $lower");

  String reversed = concatenated.split('').reversed.join('');
  print("Reversed: $reversed");
}