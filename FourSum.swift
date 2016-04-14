//
//  FourSum.swift
//  CodingQuestions
//
//  Created by Leo Qiu on 4/7/16.
//  Copyright © 2016 Leo Qiu. All rights reserved.
//

/*
 
 Given an array S of n integers, are there elements a, b, c, and d in S such that a + b + c + d = target? Find all unique quadruplets in the array which gives the sum of target.
 
 Note:
 Elements in a quadruplet (a,b,c,d) must be in non-descending order. (ie, a ≤ b ≤ c ≤ d)
 The solution set must not contain duplicate quadruplets.
 For example, given array S = {1 0 -1 0 -2 2}, and target = 0.
 
 A solution set is:
 (-1,  0, 0, 1)
 (-2, -1, 1, 2)
 (-2,  0, 0, 2)
 
 */

class FourSum {
    
    
    
    func fourSum(nums: [Int], target: Int) -> [[Int]] {

        var res:[[Int]] = [[Int]]()
        let nums:[Int] = nums.sort()
        
        for i in 0..<nums.count {
            
            let j = i+1
            for j in j..<nums.count {
                var left = j+1
                var right = nums.count-1
                
                while left < right {
                    let sum = nums[i] + nums[j] + nums[left] + nums[right];
                    if sum > target {
                        right -= 1
                        while left < right && nums[right] == nums[right+1] {
                            right -= 1
                        }
                        
                    } else if sum < target {
                        left += 1
                        while left < right && nums[left] == nums[left-1] {
                            left += 1
                        }
                        
                    } else {
                        var arr:[Int] = [Int]()
                        arr.append(nums[i])
                        arr.append(nums[j])
                        arr.append(nums[left])
                        arr.append(nums[right])
                        res.append(arr);
                    }
                
                }
                
            }
        
        }
        
        
        
        
        
        
        return res;
    }
    

}
