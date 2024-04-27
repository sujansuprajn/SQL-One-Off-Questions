class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        # set will not work threw error for asking unknown diff, hash map is good, this works since solution will have only one combination and will not have same element twice. 
        # i would be the index and n is my value iterating over nums and then finding the diff and checking the diff in the hashmap for intial value it will not be there as it will check backwards leaving that value and 
        
         #and then if you find the diff in hashmap return the index from for loop and also with a "," myset[diff] which would return the index of the diff in the hashmap 
        prevMap = { }
        for i, n in enumerate(nums):
            diff = target - n
            if diff in prevMap:
                return [prevMap[diff], i]
            prevMap[n] = i
        return False