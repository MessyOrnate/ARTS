<?php
class Solution {

	/**
	 * @param Integer $N
	 * @return Integer
	 */
	function fib($N) {
		if($N=='0')
			return 0;
		$num1 = $num2 = $temp = 1;

		for($i=2;$i<$N;$i++){
			$temp = $num1 + $num2;  //$temp = 2
			$num1 = $num2;          //$num1 = 1
			$num2 = $temp;          //$num2 = 2
		}
		return $temp;
	}
}