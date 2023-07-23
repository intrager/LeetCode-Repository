class Solution {
    public boolean isPalindrome(int x) {
        String str = String.valueOf(x);
        int start = 0, last = str.length() - 1;
        
        while(start <= last) {
            if(str.charAt(start) != str.charAt(last)) return false;
            start++;
            last--;
        }
        return true;
    }
}