<?php 
class Solution {

    /**
     * @param Integer $n
     * @return Boolean
     */
    function isPowerOfTwo($n) {
        if ($n <= 0)
        return false;
        while ($n != 0) {
            if ($n & 1 != 0)// 判断是否末位是1
            {
                if ($n == 1)
                    return true;
                else
                    return false;
            }
            $n = $n >> 1;
        }
        return true;
    }
}
