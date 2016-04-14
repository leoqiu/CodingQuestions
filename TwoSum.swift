//
//  TwoSum.swift
//  CodingQuestions
//
//  Created by Leo Qiu on 4/5/16.
//  Copyright © 2016 Leo Qiu. All rights reserved.
//

import Foundation


/*
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution.
 
 Example:
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 UPDATE (2016/2/13):
 The return format had been changed to zero-based indices. Please read the above updated description carefully.
 
 
 *** Accepted, best solution, hashmap one pass
 
 */

class TwoSum {
    
    //for looking for indice, can not alter the array, using dictionary
    class func twoSum (nums: [Int], target: Int) -> [Int] {
        var dict = [Int: Int]();
        
        //
        for i in 0..<nums.count {
            if (dict[target - nums[i]]) != nil {
                return [dict[target - nums[i]]! ,i]
            } else {
                dict[nums[i]] = i;
            }
        }
        
        return [];
    }
}


























































