class Solution {
    public int[] searchRange(int[] nums, int target) {
         int[] res = new int[]{-1,-1};
        if(nums == null || nums.length == 0) return res;
        int l = 0;
        int h = nums.length-1;
        while(l<=h){
            int mid = (l+h)/2;
            if(nums[mid]<=target){
                l = mid +1;
            }else{
                h = mid-1;
            }
        }
        if(h < 0 || nums[h]!=target) return res;
        else res[1] = h;
        l=0;h = nums.length-1;
        while(l<=h){
            int mid = (l+h)/2;
            if(nums[mid]<target){
                l = mid +1;
            }else{
                h = mid-1;
            }
        }
        res[0] = l;
        return res;
    }
}