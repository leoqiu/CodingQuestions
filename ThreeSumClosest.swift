//
//  ThreeSumClosest.swift
//  CodingQuestions
//
//  Created by Leo Qiu on 4/6/16.
//  Copyright © 2016 Leo Qiu. All rights reserved.
//



/*
 Given an array S of n integers, find three integers in S such that the sum is closest to a given number, target. Return the sum of the three integers. You may assume that each input would have exactly one solution.
 
 For example, given array S = {-1 2 1 -4}, and target = 1.
 
 The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
 
 
 */

class ThreeSumClosest {

    class func threeSumCloest(nums: [Int], target: Int) -> Int {
        
        //sort first
        let nums = nums.sort()
        var minDis = Int.max
        
        for i in 0..<nums.count {
            
            //
            if i == 0 || nums[i] < nums[i+1] {
                let cur:Int = i
                var left:Int = i+1
                var right:Int = nums.count-1
                
                while left < right {
                    let curSum = nums[cur] + nums[left] + nums[right]
                    minDis = min(abs(curSum-target), minDis)
                    
                    //distance
                    if curSum > target {
                        right -= 1;
                        //
                        while left < right && nums[right] == nums[right-1] {
                            right -= 1
                        }
                    } else if curSum < target {
                        left += 1;
                        //
                        while left < right && nums[left] == nums[left+1] {
                            left += 1
                        }
                        
                    } else {
                        return 0;
                    }
                    
                }
                
            }
            

        }
        
        return minDis;
    }

}
