<?php
class Solution {

    /**
     * @param Integer[] $nums
     * @return Integer
     */
    function singleNumber($nums) {
        $ans = $nums[0];
	    $length=count($nums);
        if ($length > 1) {
            for ($i = 1; $i <$length ; $i++) {
                 $ans = $ans ^ $nums[$i];
            }
        }
        return $ans;
    }
}