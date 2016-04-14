/*
 121. Best Time to Buy and Sell Stock My Submissions QuestionEditorial Solution
 
 Say you have an array for which the ith element is the price of a given stock on day i.
 
 If you were only permitted to complete at most one transaction (ie, buy one and sell one share of the stock), design an algorithm to find the maximum profit.
 
 prices
 3 4 5 2 3 6 7 9
 0 1 2 3 4 5 6 7
 
 accepted ...
 
*/


class BestTimeBuySellStock {


    
    func maxProfit (prices: [Int]) -> Int {
    
        if prices.count < 2 {
            return 0;
        }
        
        //keep two variable to keep curMin & maxProfit
        //current maxProfit = price[i] - curMin
        var curMin:Int = prices[0];
        var maxProfit = 0;
        
        for i in 0..<prices.count {
            maxProfit = max(prices[i]-curMin, maxProfit);
            curMin = min(curMin, prices[i]);
        }
        
        return maxProfit;
    }
    
    


}
















