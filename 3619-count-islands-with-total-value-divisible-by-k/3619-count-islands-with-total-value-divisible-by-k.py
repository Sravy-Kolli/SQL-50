class Solution:
    def countIslands(self, grid: List[List[int]], k: int) -> int:
        rows, cols=len(grid), len(grid[0])
        answer=0
        moves=[(-1,0),(1,0),(0,-1),(0,1)]
        for row in range(rows):
            for col in range(cols):
                if grid[row][col] >0:
                    island_total =0
                    stack=[(row,col)]
                    island_total +=grid[row][col]
                    grid[row][col] =0
                    while stack:
                        cur_row, cur_col =stack.pop()
                        for drow, dcol in moves :
                            next_row= cur_row +drow
                            next_col = cur_col +dcol
                            inside_grid =(0<=next_row<rows) and (0<=next_col< cols)
                            if inside_grid and grid[next_row][next_col]>0:
                                island_total += grid[next_row][next_col]
                                grid[next_row][next_col]=0
                                stack.append((next_row,next_col))
                    if island_total % k==0:
                        answer +=1
        return answer