/*
Thoughts & Ideas
Given an array of integers sorted, but we might have repeated numbers in between.
Required from us to remove those repeated numbers if any such that the order of the numbers is the same & return the size of the new array.

example:
Input: nums = [0,0,1,1,1,2,2,3,3,4]
Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]

Notice that the numbers after the number '4' in the modified array doesn't matter.


How can we solve such a problem?

we need to pointers(Indexes) one of them working with the whole and one with the part.

i for the modified array;
j for the whole;

*/


class Solution
{
  int removeDuplicates(List<int> nums)
  {
    int i = 0;
    for (int j = 0; j < nums.length; j++)
    {
      nums[i++] = nums[j];
      while(j < nums.length - 1 && nums[j] == nums[j + 1])
      {
        j++;
      }
    }
    return i;
  }
}







