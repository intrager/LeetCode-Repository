class Solution {
    public boolean isPalindrome(int x) {
        if(x < 0 || (x != 0 && x % 10 == 0)) return false;
        
        int reverseValue = 0;
        while(x > reverseValue) {
            reverseValue = reverseValue * 10 + x % 10;
            x /= 10;
        }
        return (x == reverseValue || x == reverseValue/10);
    }
}