//
//  ThreeSum.swift
//  CodingQuestions
//
//  Created by Leo Qiu on 4/6/16.
//  Copyright © 2016 Leo Qiu. All rights reserved.
//




/*
 
 Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.
 
 Note:
 Elements in a triplet (a,b,c) must be in non-descending order. (ie, a ≤ b ≤ c)
 The solution set must not contain duplicate triplets.
 For example, given array S = {-1 0 1 2 -1 -4},
 
 A solution set is:
 (-1, 0, 1)
 (-1, -1, 2)
 
 Accepted ...
 
 */

class ThreeSum {
    
    class func threeSum(nums: [Int]) -> [[Int]] {
        
        //sort first
        let nums = nums.sort()
        var res:[[Int]] = [[Int]]();
        
        for i in 0..<nums.count {
            
            //skip all the dup in the for loop
            if i == 0 || nums[i] > nums[i-1] {
                let cur = i;
                var left = i+1;
                var right = nums.count-1;
                
                while left < right {
                    let sum = nums[cur] + nums[left] + nums[right]
                    
                    if sum > 0 {
                        right -= 1;
                    } else if sum < 0 {
                        left += 1;
                    } else {
                        res.append([nums[cur], nums[left], nums[right]]);
                        left += 1;
                        right -= 1;
                        
                        //skip dup in the while loop from left
                        while left < right && nums[left] == nums[left-1] {
                            left += 1;
                        }
                        //skip dup in the while loop from right
                        while left < right && nums[right] == nums[right+1] {
                            right -= 1;
                        }
                    }
                }
            
            }
        }
        
        return res;
    }
    

}







