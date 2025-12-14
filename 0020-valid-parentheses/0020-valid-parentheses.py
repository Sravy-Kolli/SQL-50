class Solution:
    def isValid(self, s: str) -> bool:
        stack = []
        pairs = {')': '(', ']': '[', '}': '{'}

        for ch in s:
            if ch in pairs:                 # closing bracket
                if not stack:               # nothing to match
                    return False
                if stack.pop() != pairs[ch]:# wrong type
                    return False
            else:                           # opening bracket
                stack.append(ch)

        return not stack                    # stack must be empty
