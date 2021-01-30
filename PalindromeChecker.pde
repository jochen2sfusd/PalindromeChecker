public void setup() {
    String lines[] = loadStrings("palindromes.txt");
    System.out.println("there are " + lines.length + " lines");
    for (int i = 0; i < lines.length; i++) {
        if (palindrome(lines[i]) == true) {
            System.out.println(lines[i] + " IS a palindrome.");
        } else {
            System.out.println(lines[i] + " is NOT a palindrome.");
        }
    }
}
public boolean palindrome(String word) {
    word = onlyLetters(word);
    word = noCapitals(word);
    return word.equals(reverse(word));
}
public String reverse(String str) {
    str = onlyLetters(str);
    str = noCapitals(str);
    String rts = "";
    for (int i = 0; i < str.length(); i++) {
        rts = rts + str.substring(str.length() - 1 - i, str.length() - i);
    }
    return rts;
}
public String noCapitals(String sWord) {
    return sWord.toLowerCase();
}
public String onlyLetters(String sString) {
    String result = "";
    for (int i = 0; i < sString.length(); i++) {
        if (Character.isLetter(sString.charAt(i))) {
            result = result + sString.charAt(i);
        }
    }
    return result;
}
