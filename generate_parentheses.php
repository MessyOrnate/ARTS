<?php
class Solution {

    /**
     * @param  Integer  $n
     * @return String[]
     */
    function generateParenthesis($n)
    {
        $res = [];
        if ($n == 0) {
            return $res;
        }
        $this->dfs("", $n, $n, $res);
        return $res;
    }

    /**
     * @param  string  $curStr
     * @param  int  $left
     * @param  int  $right
     * @param  array  $res
     * @return array
     */
    private function dfs(string $curStr, int $left, int $right, array &$res)
    {
        if ($left == 0 && $right == 0) {
            array_push($res, $curStr);
            return $res;
        }
        if ($left > 0) {
            // 拼接上一个左括号，并且剩余的左括号个数减 1
            $this->dfs($curStr."(", $left - 1, $right, $res);
        }
        if ($right > 0 && $left < $right) {
            // 拼接上一个右括号，并且剩余的右括号个数减 1
            $this->dfs($curStr.")", $left, $right - 1, $res);
        }
    }
}