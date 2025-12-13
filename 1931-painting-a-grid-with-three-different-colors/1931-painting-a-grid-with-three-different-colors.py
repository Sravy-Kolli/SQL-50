class Solution:
    def colorTheGrid(self, m: int, n: int) -> int:

        from functools import lru_cache
        MOD = 10**9 + 7
        @lru_cache(maxsize= None)
        def solve(rem_cols:int, prev_state:int) -> int:
            if rem_cols ==0:
                return 1
            def build_row(r:int, curr_state:int) -> int:
                if r==m:
                    return solve(rem_cols-1, curr_state)
                ways =0
                up_color=(curr_state & 3 ) if r>0 else 0
                if prev_state == 0:
                    left_color=0
                else:
                    left_color= (prev_state >> ((m-1-r)*2))&3
                for color in(1,2,3):
                    if color != up_color and color!= left_color:
                        new_state= (curr_state<<2) |color
                        ways+= build_row(r+1, new_state)
                        if ways>= MOD:
                            ways %= MOD
                return ways % MOD
            return build_row(0,0)
        return solve(n,0) % MOD