<?php
class Solution {

/**
* @param Integer $x
* @return Integer
*/
function mySqrt($x) {
	if($x <= 1){
		return $x;
	}
	$left = 0;
	$right = $x;
	while( $left < $right ){
		$mid = intval($left + ($right - $left) / 2);
		if($x / $mid >= $mid){
		$left = $mid + 1;
		}else{
		$right = $mid;
		}
	}
	return $right - 1;
	}
}