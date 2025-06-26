package com.casestudy;


import java.util.HashMap;
import java.util.Map;
 
class arraysum
{
    // Function to print subarray having a given sum using hashing
    public static void findSubarray(int[] A, int sum)
    {
        // create an empty map
        Map<Integer, Integer> map = new HashMap<>();
 
        // insert `(0, -1)` pair into the set to handle the case when a
        // subarray with the given sum starts from index 0
        map.put(0, -1);
 
        // keep track of the sum of elements so far
        int sum_so_far = 0;
 
        // traverse the given array
        for (int i = 0; i < A.length; i++)
        {
            // update `sum_so_far`
            sum_so_far += A[i];
 
            // if `sum_so_far - sum` is seen before, we have found
            // the subarray with sum `sum`
            if (map.containsKey(sum_so_far - sum))
            {
                System.out.print("Subarray found [" +
                                (map.get(sum_so_far - sum) + 1) +
                                "–" + i + "]");
                return;
            }
 
            // insert (current sum, current index) pair into the map
            map.put(sum_so_far, i);
        }
    }
 
    public static void main(String[] args)
    {
        // an integer array
        int[] A = { 0, 5, -7, 1, -4, 7, 6, 1, 4, 1, 10 };
        int sum = 15;
 
        findSubarray(A, sum);
    }
}






