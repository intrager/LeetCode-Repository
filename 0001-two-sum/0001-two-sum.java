class Solution {
    public int[] twoSum(int[] nums, int target) {
        int answer1 = 0, answer2 = 0;
        boolean flag = false;
        for(int i = 0; i < nums.length - 1; i++) {
            for(int j = i + 1; j < nums.length; j++) {
                if(nums[i] + nums[j] == (long)target) {
                    answer1 = i;
                    answer2 = j;
                    flag = true;
                    break;
                }
            }
            if(flag) break;
        }
        return new int[]{answer1, answer2};
    }
}