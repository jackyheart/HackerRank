//
//  ViewController.swift
//  HackerRank
//
//  Created by Jacky Tjoa on 24/3/18.
//  Copyright © 2018 Jacky Tjoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //evaluateProblem()
        //evaluateProblem2()
        //evaluateProblem3()
        
        createBST()
        //countingPairs2()
        //isValidCoordinate()
        //powerOfFive()
        //checkDivisibility()
        //canReach(1, 2, 2, 1)
        //findMatrix4()
        //longestSubsequence()
        //groupSheepAndCows()
        //checkDivisibilityBy8_2()
        //getMinOperations()
        //splitPowerOfFive()
        
        //easyStrings3()
        
        //substringCalculator()
        //substringCalculator2()
        //substringCalculator2a()
        //substringCalculator3()
        //substringCalculator4()
        //substringCalculator5()
        
        //correct
//            maxPoints2([
//                "0 0",
//                "3 3",
//                "2 3",
//                "0 2",
//                "2 0",
//                "0 3"])
        
//        maxPoints2([
//            "24331 11582",
//            "40676 17095",
//            "36278 30532",
//            "41086 28684",
//            "20917 27058",
//            "12962 30532",
//            "12962 27058",
//            "12686 41706",
//            "11904 36954",
//            "36278 27058",
//            "20917 30532",
//            "28688 28593",
//            "37112 27058",
//            "18069 27058",
//            "32436 27058",
//            "37390 21596",
//            "18069 30532",
//            "27549 28756",
//            "32436 30532",
//            "37112 30532"])
        
        //correct
//        maxPoints2([
//            "21121 19969",
//            "31885 37104",
//            "29984 30461",
//            "38734 30461",
//            "10024 30461",
//            "38734 19969",
//            "32008 30461",
//            "28517 19969",
//            "29984 19969",
//            "21121 30461",
//            "31300 19969",
//            "41543 30461",
//            "10024 19969",
//            "32009 19969",
//            "32008 19969",
//            "21560 26580",
//            "32009 30461",
//            "28517 30461",
//            "41543 19969",
//            "31300 30461"])
 
//
        
        //        findSubstringWithStar()
        //        findSubstringWithStar2()
        //findSubstringWithStar3()
    
        //solutionNumberComplement(5)
        //solutionEncodedString4("1(2)23(3)")
        //solutionEncodedString4("23#(2)24#25#26#23#(3)")
        
        //solutionSubstrings("abcde")
        
        //twinString()
        //additionIncrement()
        //countSubstring3()
        
        //testSwap()
        //permuteRec(3, ["A", "B", "C"])
        //permuteLoop(3, ["A", "B", "C"])
        
        /*
         cdab
         dcba
         abcd
         
         abcd
         abcd
         abcdcd
         
         res:
         Yes
         No
         No
         */
        
        /*
         wrong answer on:
         abbc
         abbdd
         ****
         abbc
         ddbba
         
         my output:
         Yes
         No
         
         exptected:
         Yes
         Yes
         
         */
        
        //twins2(["abbc", "abbdd"], ["abbc", "ddbba"])
        //getMin(s: "00000")
        
        //numComplement(401)
        
        /*
         wszauoffphsyyyrvcfsewdrdwpocydurpzvsmfzcpiwwvhrjvwfsresfbckiubyhkulwigowqggznidxleylyqhwms
         qagrsoehismggrurufqzlckfzwwwoslrvuuhpesyvcrcixyozpbjkfhywzbvpynilmcyhdywiwwvdfswdefwpfyssd
         */
        
//        easyStrings2("wszauoffphsyyyrvcfsewdrdwpocydurpzvsmfzcpiwwvhrjvwfsresfbckiubyhkulwigowqggznidxleylyqhwms", "qagrsoehismggrurufqzlckfzwwwoslrvuuhpesyvcrcixyozpbjkfhywzbvpynilmcyhdywiwwvdfswdefwpfyssd")
        
        
        //twins3(["cdab", "dcba", "abcd"], ["abcd", "abcd", "abcdcd"])
        
        //twins4(["cdab", "dcba", "abcd"], ["abcd", "abcd", "abcdcd"])
        
        //maxSubsetSum([2, 4])
        
        //finalPrice(prices: [1, 3, 3, 2, 5])
        
        //alphabetCyclicIncrement([5, 10, 3, 6], ["abcde", "abcdeabcde", "yzz", "apapap"])
        
//        getSequenceSum(0, 5, -1)
//        getSequenceSum(-5, -1, -3)
//        getSequenceSum(1, 5, 2)
        //getSequenceSum(0, 5, 1)
        
        //stringPermutationAlphabetically()
         //permuteLoop(3, ["a", "b", "c"])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
     50 -> 13
     100 -> 27
     401 -> 110
     */
    
    func solutionNumberComplement(_ n:Int) {
//        let u = UInt8(n)
//        let binary = String(u, radix: 2)
//        let comp = ~u
//        let binaryComp = String(comp, radix: 2)
//        print(comp)
        
//        let xBits = 0b101
//        let yBits = 0b111
//        let result = xBits ^ yBits
//        print("Binary:", String(result, radix: 2))
//        print("")
        
        let binary = String(n, radix: 2)
        print("Input Binary:", binary)
        let val = n ^ 7
        let valBinStr = String(val, radix: 2)
        print("Binary:", valBinStr)
        
        if let num = Int(valBinStr, radix: 2) {
            print("res num: \(num)")
        }
        
        print("")
    }
    
    func getIntegerComplement(_ n: Int) -> Int {
        let binStr = String(n, radix: 2)
        let n = binStr.characters.count
        return n
    }
    
    func solutionEncodedString(_ s:String) {
        let characters = Array(s.characters)
        let n = characters.count
        var stack:[String] = []
        var res = [Int].init(repeating: 0, count: 26)
        var bracketString = ""
        var hashString = ""
        var hashCounter = 0
        
        for i in 0 ..< n {
            let idx = (n - 1) - i
            let c = String(characters[idx])
            
            if c == ")" {
                stack.append(")")
                continue
            } else if c == "(" {
                stack.removeLast()
                continue
            }
            else if c == "#" {
                stack.append("#")
                hashCounter = 0
                continue
            } else {
                if let top = stack.last {
                    
                    if top == ")" {
                        bracketString = c + bracketString
                    } else if top == "#" {
                        hashCounter += 1
                        
                        if hashCounter <= 2 {
                            hashString = c + hashString
                            
                            if hashCounter == 2 {
                                hashCounter = 0
                                stack.removeLast()
                                
                                var bracketVal = 0
                                if let val = Int(bracketString) {
                                    bracketVal = val
                                }
                                
                                var hashVal = 0
                                if let val = Int(hashString) {
                                    hashVal = val
                                }
                                
                                if hashVal > 0 {
                                    if bracketVal == 0 {
                                        res[hashVal-1] += 1
                                    } else {
                                        res[hashVal-1] += bracketVal
                                    }
                                    hashString = ""
                                    bracketString = ""
                                }
                            }
                        }
                    }
                    
                } else {
                    //top is empty
                    if let int = Int(c) {
                        
                        var bracketVal = 0
                        if let val = Int(bracketString) {
                            bracketVal = val
                        }
                        
                        if bracketVal == 0 {
                            res[int-1] += 1
                        } else {
                            res[int-1] += bracketVal
                            bracketString = ""
                        }
                    }
                }
            }
        }
    }
    
    func solutionEncodedString2(_ s:String) {
        var i = 0
        let n = s.characters.count
        let characters = Array(s.characters)
        var hashVal = ""
        var hashMode = false
        var bracketMode = false
        var bracketVal = ""
        var res = [Int].init(repeating: 0, count: 26)
        var prevVal = 0
        
        while i < n {
            
            let c = String(characters[i])
            
            //peek two steps ahead
            if i + 2 < n {
                if characters[i+2] == "#" {
                    hashMode = true
                    i += 1
                    continue
                }
            }
            
            if hashMode {
                hashVal += c
                
                if c == "#" {
                    hashMode = false
                    
                    if let val = Int(hashVal) {
                        prevVal = val
                        res[val-1] += 1
                    }
                }
            }
            
            if c == "(" {
                bracketMode = true
                i += 1
                continue
            }
            else if c == ")" {
                bracketMode = false
                if let val = Int(bracketVal) {
                    res[prevVal-1] += (val - 1)
                    bracketVal = ""
                    i+1
                    continue
                }
            }
            
            if bracketMode {
                bracketVal += c
            }
            
            if !hashMode && !bracketMode {
                if let val = Int(c) {
                    prevVal = val
                    res[val-1] += 1
                }
            }
            
            i += 1
        }

        print("")
    }
    
    func solutionEncodedString3(_ s:String) {
        var res = [Int].init(repeating: 0, count: 26)
        
        let characters = Array(s.characters)
        let n = characters.count
        
        var bracketString = ""
        var hashString = ""
        var hashCounter = 0
        var op = ""
        
        for i in 0 ..< n {
            let idx = (n - 1) - i
            let c = String(characters[idx])
            
            if c == ")" || c == "#" {
                op = c
                continue
            } else if c == "(" {
                op = ""
                continue
            }
            
            if op.isEmpty {
                
                if let val = Int(c) {
                    res[val-1] += 1
                    
                    if let bracketVal = Int(bracketString) {
                        res[val-1] += bracketVal - 1
                        bracketString = ""
                    }
                }
                
            } else {
                if op == ")" {
                    bracketString = c + bracketString
                } else if op == "#" {
                    hashString = c + hashString
                    hashCounter += 1
                    
                    if hashCounter == 2 {
                        hashCounter = 0
                        op = ""
                        
                        if let hashVal = Int(hashString) {
                            res[hashVal-1] += 1
                            hashString = ""
                            
                            if let bracketVal = Int(bracketString) {
                                res[hashVal-1] += bracketVal - 1
                                bracketString = ""
                            }
                        }
                    }
                }
            }
        }
        
        print("")
    }

    func solutionSubstrings(_ s:String) {
        let n = s.characters.count
        var hash:[String:Bool] = [:]
        var res:[String] = []
        
        /*
        var res:[String] = [s]
        hash[s] = true
        
        for x in s.characters {
            let strX = String(x)
            hash[strX] = true
            res.append(strX)
        }
        
        for i in 1 ..< n {
            let startIdx = s.index(s.startIndex, offsetBy: i)
            let endIdx = s.index(s.endIndex, offsetBy: i * -1)
            
            let prefix = String(s[startIdx ..< s.endIndex])!
            if hash[prefix] == nil {
                hash[prefix] = true
                res.append(prefix)
            }
            
            let suffix = String(s[s.startIndex ..< endIdx])!
            if hash[suffix] == nil {
                hash[suffix] = true
                res.append(suffix)
            }
        
            if startIdx < endIdx {
                let middle = String(s[startIdx ..< endIdx])!
                if hash[middle] == nil {
                    hash[middle] = true
                    res.append(middle)
                }
            }
            
            print("")
        }
        
        let sorted = res.sorted(by: {
            if $0.characters.count == $1.characters.count {
                return $0 < $1
            }
            return $0.characters.count > $1.characters.count
        })
        
        print("sorted: \(sorted)")
         */
        
        /*
        for i in 0 ..< n {
            for j in i+1 ..< n + 1 {
                let startIdx = s.index(s.startIndex, offsetBy: i)
                let endIdx = s.index(s.startIndex, offsetBy: j)
                
                let sub = String(String(s[startIdx ..< endIdx]))!
                if hash[sub] == nil {
                   hash[sub] = true
                    res.append(sub)
                }
            }
        }
        
        let sorted = res.sorted(by: {
            if $0.characters.count == $1.characters.count {
                return $0 < $1
            }
            return $0.characters.count > $1.characters.count
        })
        
        print(sorted)
        */
    }
    
    func additionIncrement() {
        let a = 3
        let b = 1000
        let c = -1
        
        var sum = 0
        var add = 0
        for _ in a ..< b {
            sum += (a + add)
            add += 1
        }
        sum += b
        print("sum1: \(sum)")
        
        var sum2 = 0
        sum2 = ((b * (b + 1)) / 2)
        print("sum2: \(sum2)")
        
        var sum3 = ((a-1) * ((a-1) + 1)) / 2
        
        var sumCorrect = sum2 - sum3
        print("sum correct: \(sumCorrect)")
        
        print("")
        
        //decrement
        var decSum = 0
        var sub = 0
        for _ in c ..< b {
            decSum += (b - sub)
            //print("decSum (in loop): \(decSum), sub:\(sub)")
            sub += 1
        }
        
        decSum += c
        
        print("decSum: \(decSum)")
        
        let diff = b - c
        let sub2 = ((diff * (diff + 1)) / 2)
        let sub3 = ((abs(c) * (abs(c) + 1)) / 2)
        
        let decSum2 = ((sub2 - sub3) - b) + c
        print("decSum2: \(decSum2)")
        
        print("")
    }
    
    //fail
    func missingWords(s: String, t: String) -> [String] {
        var fullS = s.characters.split{$0 == " "}.map(String.init)
        let subT = t.characters.split{$0 == " "}.map(String.init)
        
        for st in subT {
            var idx = fullS.index(of: st)
            while idx != nil {
                fullS.remove(at: idx!)
                idx = fullS.index(of: st)
            }
        }
        
        return fullS
    }
    
    //5/10
    func missingWords2(s: String, t: String) -> [String] {
        var fullS = s.characters.split{$0 == " "}.map(String.init)
        let subT = t.characters.split{$0 == " "}.map(String.init)
        
        for st in subT {
            var idx = fullS.index(of: st)
            while idx != nil {
                fullS.remove(at: idx!)
                idx = fullS.index(of: st)
            }
        }
        
        return fullS
    }
    
    //fail
    func missingWords3(s: String, t: String) -> [String] {
        
        var res:[String] = []
        
        var fullTextArr = s.split{$0 == " "}.map(String.init)
        let subTextArr = t.split{$0 == " "}.map(String.init)
        for sub in subTextArr {
            
            if let idx = fullTextArr.index(of: sub) {
                fullTextArr.remove(at: idx)
            }
            
            //            var idx = fullTextArr.index(of: sub)
            //            while idx != nil {
            //                fullTextArr.remove(at: idx!)
            //                idx = fullTextArr.index(of: sub)
            //            }
        }
        
        return res
    }
    
    func indicesOf(fullString: String, string: String) -> [Int] {
        var indices = [Int]()
        var searchStartIndex = fullString.startIndex
        
        while searchStartIndex < fullString.endIndex,
            let range = fullString.range(of: string, range: searchStartIndex..<fullString.endIndex),
            !range.isEmpty
        {
            let index = fullString.distance(from: fullString.startIndex, to: range.lowerBound)
            indices.append(index)
            searchStartIndex = range.upperBound
        }
        
        return indices
    }
    
    //5/10
    func missingWords4(s: String, t: String) -> [String] {
        var sArr = s.split{$0 == " "}.map(String.init)
        var res:[String] = []
        
        if t.isEmpty {
            res = sArr
        } else {
            let tArr = t.split{$0 == " "}.map(String.init)
            for w in sArr {
                if(!tArr.contains(w)) {
                    res.append(w)
                }
            }
        }
        
        return res
    }
    
    //JS code
    
    /*
    function missingWords(s, t) {
    
        if(t.length === 0)
            return s
    
        var re = /\s+/;
    
        var sArray = s.trim().split(re);
        var tArray = t.trim().split(re);
        var missingWords = []
        sArray.forEach(word => {
            if(!tArray.includes(word))
                missingWords.push(word)
        })
    
        return missingWords;
    }
    */
    
    /*
    function missingWords(s, t) {
    
        var missing = [];
        var a = s. split(' ');
        var b = t.split(' ');
    
        for(var i=0, j=0; i < a.length; i++) {
            if(a[i] !== b[j]) {
                missing.push(a[i]);
            } else {
                j++;
            }
        }
    
        return missing;
    }
    */

    //21/100 ??
    //12/18 -> the rest timeout
    func closestNumbers(numbers: [Int]) -> Void {
        let n = numbers.count
        let sorted = numbers.sorted(by: < )
        var min = Int.max
        var res:[Int] = []
        var hash:[Int:Int] = [:]
        
        for i in 0 ..< n - 1 {
            let diff = abs(sorted[i+1] - sorted[i])
            if diff < min {
                min = diff
            }
        }
        
        for i in 0 ..< n - 1 {
            for j in i+1 ..< n {
                let diff = abs(sorted[j] - sorted[i])
                if diff == min {
                    hash[sorted[i]] = sorted[j]
                    res.append(sorted[i])
                }
            }
        }
        
        for r in res {
            print("\(r) \(hash[r]!)")
        }
    }
    
    //3/12 (runtime errors)
    func countPairs(numbers: [Int], k: Int) -> Int {
        let n = numbers.count
        var pair:[Int:Int] = [:]
        var count = 0
        
        for i in 0 ..< n - 1 {
            for j in i+1 ..< n {
                let numI = numbers[i]
                let numJ = numbers[j]
                if (numJ - numI == k) {
                    if pair[numI] == nil {
                        pair[numI] = numJ
                        count += 1
                    } else {
                        //(a, b) (c, d)
                        //a != c, b != d
                        //a != d, b != c
                        //let d = pair[numI]
                        //count += 1
                    }
                }
            }
        }
        return count
    }
    
    //8/10 !!
    func move(_ x:Int, _ y:Int, _ x2: Int, _ y2: Int) -> Bool {
        
        print("(x, y): \(x), \(y)")
        
        if x == x2 && y == y2 {
            return true
        } else {
            
            if x != x2 {
                if x < x2 {
                    return move(x + y, y, x2, y2)
                } else {
                    //return false
                }
            }
            
            if y != y2 {
                if y < y2 {
                    return move(x, y + x, x2, y2)
                } else {
                    //return false
                }
            }
        }
        
        return false
    }
    
    /*
     1
     4
     5
     9
     return yes
     
     1
     2
     2
     1
     return no
     */
    
    //1 wrong answer !!
    func move2(_ x1:Int, _ y1:Int, _ x2: Int, _ y2: Int) -> Bool {
        
        var x = x1
        var y = y1
        
        if x2 < x1 {
            return false
        }
        
        if y2 < y1 {
            return false
        }
        
        var isFound = false
        
        //move x first
//        while x < x2 {
//            x += y
//        }
//
//        while y < y2 {
//            y += x
//        }
//
//        if x == x2 && y == y2 {
//            isFound = true
//        }
//
//        if !isFound {
//            //if still not found
//
//            //move y first
//            x = x1
//            y = y1
//
//            while y < y2 {
//                y += x
//            }
//
//            while x < x2 {
//                x += y
//            }
//
//            if x == x2 && y == y2 {
//                isFound = true
//            }
//        }
        
        if !isFound {
            //if still not found
            
            //move alternate
            x = x1
            y = y1
            var count = 0
            
            while x < x2 || y < y2 {
                
                if count % 2 == 0 {
                    x += y
                } else {
                    y += x
                }
                
//                if x >= x2 && y >= y2 {
//                    break
//                }
                
                count += 1
            }
            
            if x == x2 && y == y2 {
                isFound = true
            }
        }
        
        return isFound
    }
    
    func canReach(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int) -> String {
        //var x = x1
        //var y = x1
        
        return move2(x1, y1, x2, y2) ? "Yes" : "No"
    }
    
    func countSubstring1() {
        let s = "kincenvizh"
        var res:[String] = []
        
        for i in 1 ..< s.count {
            let pref = String(s.prefix(i))
            res.append(pref)
            
            let suff = String(s.suffix(i))
            res.append(suff)
            
            let startIdx = s.index(s.startIndex, offsetBy: i)
            let endIdx = s.index(s.endIndex, offsetBy: i * -1)
            if startIdx < endIdx {
                let middle = String(s[startIdx ..< endIdx])
                res.append(middle)
            }
        }
        
        print("res count (sub1): \(res.count)")
    }
    
    func countSubstring2() {
        let s = "ghaqjdrmnegmrlrlfpjmnnngpwalzknsencuzwsnhfltwohdgbmvfuwtquosrnyerucntxxkfqehjqygcarxogvcfkljzbzutxphpyykapncjfclnhndzxghelyvzpylazhuutmcquusexzbhsfsmbnlvnlemzvfqbfzwquairhpylnbvyhiyamztlhfchhbwrqddmuzsprfdwuqqchcpeakkexackwwzihkfenwzwckynymgqydvjtovaoezkjjurylqcuonsujycziobnfnmuwnoxcdtahpituykvgpyyshvukrstcbmnsqtjseflwywnslmvnqrtnzkyaddkjamrezprqgoenzsdryygbkeahfiduozpwkrgmatszaxmwodsqiocvagbvxyqotpaujnqvqgjmfxnxhfbwqjpgodlxdrxpjpmzeabpgqrzpxomniknjkdiwtfgyvwvekrnoupwkcbtmpcfamzrghgrznuedkybmfwctdghcfawajlxfkzhdamuygjbcwnyglkjlfmpxfdtovkqbshhrfrnyjrgxgiozsuuncnwofkqzsypwgeikpfbhryhpszegdfajzvqlwwqlnvdtdiuckcvvosrdweohnmawqonjbxyjjhlccuteeshfrxxdhzgakwjqbymnaeudcmibsytyajsgdpfvrutcpglzxdevenevmkgalcrpknuvcrnkuboennhyzirfwvtozzijujsckbxqpocakzrbwgpqgjjmsrtwmvhwyraukbuxfvebeylfpipzwjdzlmgslbtwzataxgqpasrssnfwndldwkdutdqcmcpyanrbdsxrvcvpsywjambtbzlcrvzesuhvyvwwuwwdznigxjxknfajpknqutfvvqynkpvkzgypasevrpxofbymdzcitoqolwqegocuyqsexhumzmckzuuwkamolbltlifongpvkcnrnnuplftqbxpdnegdqlymftqyrxcnzmu"
        var res:[String] = []
        let chars = Array(s).map { String($0) }
        
        for i in 1 ..< s.count {
            let pref = chars[0 ..< i].joined()
            res.append(pref)
            //print("pref: \(pref)")
            
            let suff = chars[(s.count - i) ..< s.count].joined()
            res.append(suff)
            //print("suff: \(suff)")
            
            if i < s.count - i {
                let middle = chars[i ..< s.count - i].joined()
                res.append(middle)
                //print("middle i: \(i), s.count - i: \(s.count - i)")
                //print("middle: \(middle)\n")
            }
        }
        
        print("res count (sub2): \(res.count)")
    }
    
    func countBinaryOne() {
        let input = [5, 99, 9971, 9999999]
        var res:[String] = []
        
        for n in input {
            var sum = 0
            var valN = n
            let binStr = String(n, radix: 2)
            for _ in binStr {
                sum += valN & 1
                valN >>= 1
            }
            res.append("\(n), \(binStr): \(sum)")
        }
        
        print(res)
    }
    
    func countBinaryOne2() {
        let input = [5, 99, 9971, 9999999]
        var res:[String] = []
        
        for n in input {
            let binStr = String(n, radix: 2)
            let arrBinStr = Array(binStr)
            let sum = arrBinStr.filter({ $0 == "1" }).count
            res.append("\(n), \(binStr): \(sum)")
        }
        
        print(res)
    }
    
    func findMatrix(a: [[Int]]) -> [[Int]] {
        var res = a
        let row = a.count
        
        if row > 0 {
            let col = a[0].count
            
            for i in 0 ..< row {
                for j in 0 ..< col {
                    res[i][j] = 0
                }
            }
        }
        
        return res
    }
    
    /*
     input0:
     2
     50 3
     aceace ceceaa abdbdbdbakjkljhkjh
     47 3
     azbde abcher acegk
     
     output0:
     EVEN
     ODD
     */
    
    func oddStrings() {

        let n = Int(readLine(strippingNewline: true)!)!
     
        for _ in 0 ..< n {
            let metaArray = readLine(strippingNewline: true)!.characters.split {$0 == " "}.map (String.init)
            let exp = Int(metaArray[0])
            let numString = Int(metaArray[1])
            
            let stringArray = readLine(strippingNewline: true)!.characters.split {$0 == " "}.map (String.init)
            var hash:[String:Int] = [:]
            for s in stringArray {
                let chars = Array(s).map { String($0) }
                for c in chars {
                    if hash[c] == nil {
                        hash[c] = 0
                    } else {
                        hash[c]! += hash[c]! + 1
                    }
                }
            }
         
            /*
             var sum = 0
             for key in hash.keys {
                let times = hash[key]
                let ascii = UInt8(ascii: key)
                let p = pow(ascii, exp) * times
                sum += p
             }
         
             if sum % 2 == 0 {
                print("EVEN")
             } else {
                print("ODD")
             }
            */
        }
    }

    func readAscii() {
        let chars = ["a", "b", "c", "d", "e", "z", "A", "B", "Z"]
        
        for c in chars {
            //"a".characterAtIndex(0)
            let nsString = c as NSString
            let ascii = nsString.character(at: 0)
            print("\(nsString): \(ascii)")
        }
        
        let aAscii = ("a" as NSString).character(at: 0)
        let bAscii = ("b" as NSString).character(at: 0)
        let diff = bAscii - aAscii
        print("diff: \(diff)")
    }
    
    func twins(a: [String], b: [String]) -> [String] {
        
        var res:[String] = []
        
        for i in 0 ..< a.count {
            
            let sA = a[i]
            let sB = b[i]
            
            var charsA = Array(sA).map { String($0) }
            
            let charsAHolder = charsA
            let charsB = Array(sB).map { String($0) }
            
            let nA = charsA.count
            let nB = charsB.count
            
            if nA != nB {
                res.append("No")
            } else {
                if sA == sB {
                    res.append("Yes")
                } else {
                    //swap even
                    var isFound = false
                    for i in 0 ..< nA {
                        if i + 2 < nA {
                            let tmp = charsA[i]
                            charsA[i] = charsA[i + 2]
                            charsA[i + 2] = tmp
                            
                            if charsA == charsB {
                                isFound = true
                                break
                            }
                        }
                    }
                    
                    if !isFound {
                        for i in 1 ..< nA {
                            if i + 2 < nA {
                                let tmp = charsA[i]
                                charsA[i] = charsA[i + 2]
                                charsA[i + 2] = tmp
                                
                                if charsA == charsB {
                                    isFound = true
                                    break
                                }
                            }
                        }
                    }
                    
                    if isFound {
                        res.append("Yes")
                    } else {
                        res.append("No")
                    }
                }
            }
        }
        
        return res
    }
  
    func twinString() {
        let s1 = "abbdd"
        let s2 = "ddcba"
        
        let s1Arr = Array(s1.characters.map({ String($0) }))
        let s2Arr = Array(s2.characters.map({ String($0) }))
        
        var hashA:[String:Int] = [:]
        var hashB:[String:Int] = [:]
        
        for i in 0 ..< s1Arr.count {
            let valS1 = s1Arr[i]
            if hashA[valS1] == nil {
                hashA[valS1] = 0
            } else {
                hashA[valS1]! += 1
            }
            
            let valS2 = s2Arr[i]
            if hashB[valS2] == nil {
                hashB[valS2] = 0
            } else {
                hashB[valS2]! += 1
            }
        }
        
        var isHashSame = true
        for key in hashA.keys {
            if hashA[key] != hashB[key] {
                isHashSame = false
                break
            }
        }
        
        print("isHashSame: \(isHashSame)")
    }
    
    /*
     cdab
     dcba
     abcd
     
     abcd
     abcd
     abcdcd
     
     res:
     Yes
     No
     No
     */
    
    /*
     wrong answer on:
     abbc
     abbdd
     ****
     abbc
     ddbba
     
     my output:
     Yes
     No
     
     exptected:
     Yes
     Yes
     
     */
    
    func twins2(_ a: [String], _ b: [String]) -> [String] {
        
        var res:[String] = []
        
        for i in 0 ..< a.count {
            let sA = a[i]
            let sB = b[i]
            
            if sA == sB {
                res.append("Yes")
            } else {
                if sA.count != sB.count {
                    res.append("No")
                } else {
                    var sArr = Array(sA).map { String($0) }
                    let nS = sArr.count
                    var isFound = false
                    
                    for j in 0 ..< nS {
                        if j + 2 < nS {
                            sArr.swapAt(j, j+2)
                            let swStr = sArr.joined()
                            
                            if swStr == sB {
                                isFound = true
                                break
                            }
                        }
                    }
                    
                    if isFound {
                        res.append("Yes")
                    } else {
                        res.append("No")
                    }
                }
            }
        }
        
        print(res)
        
        return res
    }
    
    /*
     cdab
     dcba
     abcd
     
     abcd
     abcd
     abcdcd
     
     res:
     Yes
     No
     No
     */
    
    /*
     wrong answer on:
     abbc
     abbdd
     ****
     abbc
     ddbba
     
     my output:
     Yes
     No
     
     exptected:
     Yes
     Yes
     
     */
    
    func encodeString(_ s:String) -> String {
        var hashEven:[String: Int] = [:]
        var hashOdd:[String:Int] = [:]
        
        let chars = Array(s).map(String.init)
        let n = chars.count
        
        for i in 0 ..< n {
            
            let c = chars[i]
            
            if i % 2 == 0 {
                if hashEven[c] == nil {
                    hashEven[c] = 0
                } else {
                    hashEven[c]! += 1
                }
            } else {
                if hashOdd[c] == nil {
                    hashOdd[c] = 0
                } else {
                    hashOdd[c]! += 1
                }
            }
        }
        
        var encoding = ""
        
        for key in hashEven.keys {
            encoding += "\(hashEven[key]!)"
        }
        
        encoding += "-"
        
        for key in hashOdd.keys {
            encoding += "\(hashOdd[key]!)"
        }
        
        return encoding
    }
    
    func twins3(_ a: [String], _ b: [String]) -> [String] {
        
        var res:[String] = []
        
        for i in 0 ..< a.count {
            let sA = a[i]
            let sB = b[i]
            
            if sA.count != sB.count {
                res.append("No")
            } else {
                if sA == sB {
                    res.append("Yes")
                } else {
                    let encodeA = encodeString(sA)
                    let encodeB = encodeString(sB)
                    
                    if encodeA == encodeB {
                        res.append("Yes")
                    } else {
                        res.append("No")
                    }
                }
            }
        }
        
        return res
    }
    
    //time out !!
    /*
     input
     [6, 3, 4, 5]
     [4, 6, 3, 5]
     [6, 4, 5, 3]
     [4, 6, 5, 3]
     output
     [4, 6, 5, 3]
     
     input
     [13, 10, 21, 20]
     output: 1 move
     [20, 10, 21, 13]
     
     input
     [8, 5, 11, 4, 6]
     [8, 4, 11, 5,]
     [8, 4, 6, 5, 11]
     */
    
    func moves(a: [Int]) -> Int {
        var aArr = a
        let n = a.count
        var count = 0
        let half = n / 2
        
        var j = 0
        for i in 0 ..< n {
            let val = aArr[i]
            if val % 2 == 1 {
                var move = i + 1
                if move < n {
                    var moveVal = aArr[move]
                    while moveVal % 2 != 0 {
                        move += 1
                        if move < n {
                            moveVal += 1
                        }
                    }
                    
                    var tmp = aArr[i]
                    aArr[i] = aArr[move]
                    aArr[move] = tmp
                    count += 1
                }
            }
        }
        
        return count
    }
    
    //custom sorted array
    func moves2(a: [Int]) -> Int {
        return 0
    }
    
    /*
     6
     a
     b
     ba
     bca
     bda
     bdca
     
     output: 4
     */

    func longestChain(words: [String]) -> Int {
        
        let n = words.count
        var max = 0
        
        var removeEnd = 1
        for i in 0 ..< n {
            
            var count = 0
            let prevArr = words[0 ..< i]
            
            let w = words[i]
            var charsW = Array(w).map { String($0) }
            
            while charsW.count > 1 {
                if n - removeEnd >= 0 {
                    charsW.remove(at: n - removeEnd)
                }
                
                if prevArr.contains(charsW.joined()) {
                    count += 1
                } else {
                    break
                }
            }
            
            if count > max {
                max = count
            }
        }
        
        return max
    }
    
    //tbc
    func longestChain2() -> Int {
        
        let words = ["a", "and", "an", "bear"]
        //let words = ["a", "b", "ba", "bca", "bda", "bdca"]
        //let words = ["a", "b", "ba", "bca", "bda", "bdca"]
        
        //exp 4
        
        //ba -> a; ba -> b
        
        //bca -> ba -> a; bca -> ba -> b
        //bda -> ba -> a; bda -> ba -> b
        
        //bdca -> bda -> ba -> a
        //bdca -> bda -> ba -> b
        //bdca -> bca -> ba -> a
        //bdca -> bca -> ba -> b
        
        //[a, and, an, bear]
        //exp 3
        
        //let n = words.count
        var max = 0
        var sortedWordsByCount = words.sorted(by: { $0.characters.count < $1.characters.count })
        var hash:[String:Int] = [:]
        
        for i in  0 ..< sortedWordsByCount.count {
            
            let w = sortedWordsByCount[i]
            
            let wCount = w.characters.count
            if wCount == 1 {
                max = 1
                hash[w] = 1
            } else {
                
                var wChars = Array(w.characters).map { String($0) }
                var wCharsVar = wChars
                var chain = 1
                
                var shouldBreakOutlerLoop = false
                while wCharsVar.count > 1 {
                    
                    var idxToRemove = wCharsVar.count - 1
                    let subCount = wCharsVar.count - 1
                    
                    while idxToRemove >= 0 {
                        wCharsVar = wChars
                        wCharsVar.remove(at: idxToRemove)
                        let sub = wCharsVar.joined()
                        
                        if hash[sub] != nil {
                            chain = hash[sub]! + chain
                            shouldBreakOutlerLoop = true
                            break
                        } else {
                            let filteredDict = sortedWordsByCount.filter({ $0.characters.count == subCount })
                            if filteredDict.contains(sub) {
                                wCharsVar = Array(sub.characters).map { String($0) }
                                wChars = wCharsVar
                                chain += 1
                                break
                            }
                        }
                        
                        idxToRemove -= 1
                        
                        if idxToRemove < 0 {
                            //sub not found in dict
                            shouldBreakOutlerLoop = true
                        }
                    }
                    
                    if shouldBreakOutlerLoop {
                        break
                    }
                }
                
                let wCharsJoined = wChars.joined()
                hash[wCharsJoined] = chain
                
                if chain > max {
                    max = chain
                }
            }
        }
        
        return max
    }
    
    //== Testing...
    
    func testSwap() {
        var arr = ["A", "B", "C", "D", "E"]
        arr.swapAt(1, 3)
        print("arr after swap:")
        print(arr)
        
        var a = "A"
        var b = "B"
        swap(&a, &b)
        print("after swap:")
        print("a: \(a), b: \(b)")
    }
    
    func permuteRec(_ n:Int, _ s:[String]) {
        
        var A = s
        
        if n == 1 {
            //print(A)
        }
        else {
            for i in 0 ..< n - 1 {
                permuteRec(n - 1, A)
                if n % 2 == 0 {
                    A.swapAt(i, n-1)
                } else {
                    A.swapAt(0, n-1)
                }
            }
            permuteRec(n-1, A)
        }
    }
    
    func permuteLoop(_ n:Int, _ s:[String]) {
        var c = [Int].init(repeating: 0, count: n)
        var A = s
        
        //print(A)
        
        var i = 0
        while i < n {
            if c[i] < i {
                if i % 2 == 0 {
                    A.swapAt(0, i)
                } else {
                    A.swapAt(c[i], i)
                }
                
                //print(A)
                c[i] += 1
                i = 0
            }
            else {
                c[i] = 0
                i += 1
            }
        }
        
        //print(A)
    }
    
    //== End test...
    
    //5/10
    func getMin(s: String) -> Int {
        let y = 5
        if let num = Int(s, radix: 2) {
            var x = num
            if x == 0 {
                return -1
            }
            
            while (x%y == 0) { x = x / y }
            
            if x == 1 {
                //num is a power of 5
                let binStr = String(num, radix: 2)
                if s.range(of:binStr) != nil {
                    let tok =  s.components(separatedBy:binStr)
                    return tok.count - 1
                }
            } else {
                if num % 5 == 0 {
                    let binStr = "101"
                    if s.range(of:binStr) != nil {
                        let tok =  s.components(separatedBy:binStr)
                        return tok.count - 1
                    }
                }
            }
        }
        
        return -1
    }
    
    //====
    
    func permuteLoopDiv8(_ n:Int, _ s:[String]) -> Bool {
        
        var c = [Int].init(repeating: 0, count: n)
        var A = s
        
        var isFound = false
        var i = 0
        while i < n {
            if c[i] < i {
                if i % 2 == 0 {
                    A.swapAt(0, i)
                } else {
                    A.swapAt(c[i], i)
                }
                
                if let intVal = Int(A.joined()) {
                    if intVal % 8 == 0 {
                        isFound = true
                        break
                    }
                }
                
                c[i] += 1
                i = 0
            }
            else {
                c[i] = 0
                i += 1
            }
        }
        
        return isFound
    }
    
    //4/11, 3 wrongs, 4 timeout
    func checkDivisibility() -> [String] {
        
        let arr = ["9000000001"]
        var res:[String] = []
        
        for s in arr {
            
            if let intVal = Int(s) {
                
                var isFound = false
                
                if intVal % 8 == 0 {
                    isFound = true
                } else {
                    
                    let sArr = Array(s).map { String($0) }
                    let n = sArr.count
                    
                    //check if all contains same character
                    var isAllSame = false
                    if n > 0 {
                        let first = sArr[0]
                        let filtered = sArr.filter({ $0 == first })
                        if filtered.count == n {
                            isAllSame = true
                        }
                    }
    
                    if isAllSame {
                        isFound = false
                    } else {
                        let sortedArr = sArr.sorted()
                        let sorted = sortedArr.joined()
                        
                        var isSortedDiv8 = false
                        if let sortedInt = Int(sorted) {
                            if sortedInt % 8 == 0 {
                                isSortedDiv8 = true
                            }
                        }
                        
                        if isSortedDiv8 {
                            isFound = true
                        } else {
                            isFound = permuteLoopDiv8(n, sortedArr)
                        }
                    }
                } //end else
                
                if isFound {
                    res.append("YES")
                } else {
                    res.append("NO")
                }
                
            } else {
                //string not converted to intVal
                res.append("NO")
            }
        }
        
        return res
    }
    
    //4//11; 7 wrongs
    func checkDivisibilityBy8_2() -> [String] {
        
        let arr = ["61"]
        var res:[String] = []
        
        var latest8 = ""
        var div8Arr:[String] = []
        var i = 0
        
        while latest8.count < 4 {
            let val = String(8 * i)
            if val.count >= 4 {
                break
            }
            
            div8Arr.append(val)
            latest8 = val
            i += 1
        }
        
        //=============================================
        
        for s in arr {
            
            if let intVal = Int(s) {
                var isFound = false
                
                if intVal % 8 == 0 {
                    isFound = true
                } else {
                    
                    let sArr = Array(s).map { String($0) }
                    let sArrSorted = sArr.sorted(by: <)
                    
                    let sArrSortedJoined = sArrSorted.joined()
                    if let intSorted = Int(sArrSortedJoined) {
                        if intSorted % 8 == 0 {
                            isFound = true
                        }
                    }
                    
                    if !isFound {
                        
                        //only proceed if it's not found
                        if s.count == 2 {
                            
                            let div8ArrCount2 = div8Arr.filter({
                                let char8Arr = Array($0).map { String($0) }
                                return char8Arr[0] >= sArrSorted[0] && $0.count == 2
                            })
                            
                            for div in div8ArrCount2 {
                                
                                var contains = true
                                var sArrVar = sArrSorted
                                
                                let divArr = Array(div).map { String($0) }
                                for d in divArr {
                                    if let idx = sArrVar.index(of: d) {
                                        sArrVar.remove(at: idx)
                                    } else {
                                        contains = false
                                        break
                                    }
                                }
                                
                                if contains {
                                    isFound = true
                                }
                            }
                            
                        } else if s.count > 2 {
                            
                            let div8ArrCount3 = div8Arr.filter({
                                let char8Arr = Array($0).map { String($0) }
                                return char8Arr[0] >= sArrSorted[0] && $0.count == 3
                            })
                            
                            for div in div8ArrCount3 {
                                let divArr = Array(div).map { String($0) }
                                
                                var contains = true
                                var sArrVar = sArrSorted
                                
                                for d in divArr {
                                    if let idx = sArrVar.index(of: d) {
                                        sArrVar.remove(at: idx)
                                    } else {
                                        contains = false
                                        break
                                    }
                                }
                                
                                if contains {
                                    isFound = true
                                }
                            }
                        }
                    }
                }
                
                if isFound {
                    res.append("YES")
                } else {
                    res.append("NO")
                }
                
            } else {
                res.append("NO")
            }
        }
        
        return res
    }
    
    //Matrix sum
    
    /*
     s = 0;
     
     for (i = 0; i ≤ x; i += 1) {
        for (j = 0; j ≤ y; j += 1) {
            s = s + a(i, j);
        }
     }
     
     b(x, y) = s;
     
     3
     3
     1 2 3
     4 5 6
     7 8 9
     
     1  3  6
     5  12 21
     12 27 45
     */
    
    //poor performance...
    func findMatrix2(a: [[Int]]) -> [[Int]] {
        var res = a
        var tmp = a
        
        let row = a.count
        
        for x in 0 ..< row {
            for y in 0 ..< row {
                
                if x == 0 && y == 0 {
                    res[x][y] = a[x][y]
                } else {
                    if y > 0 {
                        tmp[x][y] = tmp[x][y] + tmp[x][y-1]
                    }
                    
                    if x == 0 {
                        res[x][y] = tmp[x][y]
                    } else {
                        res[x][y] += tmp[x-1][y]
                    }
                }
            }
        }
        
        print(res)
        
        return res
    }
    
    //correct count !! (tbc) - not all passed...
    func findMatrix3(_ a: [[Int]]) -> [[Int]] {
        var res = a
        var tmp = a
        
        let row = a.count
        
        for x in 0 ..< row {
            for y in 0 ..< row {
                
                if x == 0 && y == 0 {
                    res[x][y] = a[x][y]
                } else {
                    
                    if y == 0 {
                        tmp[x][y] = a[x][y]
                    }
                    else {
                        tmp[x][y] = tmp[x][y] + tmp[x][y-1]
                    }
                    
                    if x == 0 {
                        res[x][y] = tmp[x][y]
                    } else {
                        res[x][y] = tmp[x][y] + res[x-1][y]
                    }
                }
            }
        }
        
        //        print("tmp:")
        //        print(tmp)
        //
        //        print("res:")
        //        print(res)
        
        return res
    }
    
    func findMatrix4() -> [[Int]] {
        
        let a = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
        
        /*
         res:
         1  3  6
         5  12 21
         12 27 45
         */
        
        var res = a
        var tmp = a
        
        let row = a.count
        var col = row
        
        if a.count > 0 {
            col = a[0].count
        }
        
        for x in 0 ..< row {
            for y in 0 ..< col {
                
                if x == 0 && y == 0 {
                    res[x][y] = a[x][y]
                }
                else {
                    
                    if y == 0 {
                        tmp[x][y] = a[x][y]
                    }
                    else {
                        tmp[x][y] = tmp[x][y] + tmp[x][y-1]
                    }
                    
                    if x == 0 {
                        res[x][y] = tmp[x][y]
                    } else {
                        res[x][y] = tmp[x][y] + res[x-1][y]
                    }
                }
            }
        }
        
        //        print("tmp:")
        //        print(tmp)
        //
        //        print("res:")
        //        print(res)
        
        return res
    }
    
    /*
     (B,D) (D,E) (A,B) (C,F) (E,G) (A,C)
     (A(B(D(E(G))))(C(F)))
     
     (A,B) (A,C) (B,D) (D,C)
     E3
     
     Error Code     Type of error
     E1             More than 2 children
     E2             Duplicate Edges
     E3             Cycle present
     E4             Multiple roots
     E5             Any other error
     */
    
    func SExpression(_ nodes: String) -> String {
        
        if nodes.isEmpty {
            return "E5"
        }
        
        var res:[Node] = []
        var root:Node? = nil
        
        let splitNodes = nodes.split{$0 == " "}.map(String.init)
        for nodeStr in splitNodes {
            let nodeStrArr = Array(nodeStr).map(String.init)
            let val1 = nodeStrArr[1]
            let val2 = nodeStrArr[3]
            
            var node:Node? = nil
            for rNode in res {
                if rNode.val == val1 {
                    node = rNode
                    break
                }
            }
            
            if node == nil {
                let node2 = Node(val2, nil, nil)
                let node1 = Node(val2, node2, nil)
                
                res.append(node1)
                res.append(node2)
            } else {
                let node2 = Node(val2, nil, nil)
                
                if node?.left != nil {
                    node?.right = node2
                } else {
                    node?.left = node2
                }
                
                res.append(node2)
            }
        }
        
        return ""
    }
    
    /*
     A
     /  \
     B    C
     / \  / \
     G  D  E   H
            \
            F
     
     A
     /  \
     B    C
     / \  / \
     D  G H   E
             /
             F
     */
    
    class Node {
        var val = ""
        var parent:Node? = nil
        var left:Node? = nil
        var right:Node? = nil
        
        init(_ v:String, _ l:Node?, _ r:Node?) {
            val = v
            left = l
            right = r
        }
    }
    
    func SExpression2(_ nodes: String) -> String {
        
        if nodes.isEmpty {
            //other errors
            return "E5"
        }
        
        var res:[Node] = []
        var root:Node? = nil
        var disconnectedNode:Node? = nil
        
        let splitNodes = nodes.characters.split{$0 == " "}.map(String.init)
        for nodeStr in splitNodes {
            let nodeStrArr = Array(nodeStr.characters).map { String($0) }
            let val1 = nodeStrArr[1]
            let val2 = nodeStrArr[3]
            
            if res.isEmpty {
                let node1 = Node(val1, nil, nil)
                let node2 = Node(val2, nil, nil)
                
                res.append(node1)
                res.append(node2)
                
                node1.left = node2
                node2.parent = node1
                root = node1 // root here
                
            } else {
                
                let node1 = Node(val1, nil, nil)
                let node2 = Node(val2, nil, nil)
                var isParentOrChildFound = false
                
                if let idx = res.index(where: { $0.val == node1.val }) {
                    
                    //parent found
                    
                    let r = res[idx]
                    
                    var childNode = node2
                    if let idx = res.index(where: { $0.val == node2.val }) {
                        childNode = res[idx]
                        disconnectedNode = nil
                    }
                    
                    if r.parent != nil && childNode.parent != nil {
                        //duplicate edges (??)
                        return "E2"
                    }
                    
                    if childNode.parent != nil {
                        //cycle detected
                        return "E3"
                    }
                    
                    if r.left == nil {
                        r.left = childNode
                    } else if r.right == nil {
                        r.right = childNode
                    } else {
                        //more than 2 children
                        return "E1"
                    }
                    
                    childNode.parent = r
                    
                    isParentOrChildFound = true
                }
                else if let idx = res.index(where: { $0.val == node2.val }) {
                    
                    //child found
                    
                    let r = res[idx]
                    
                    if r.parent != nil {
                        //cycle detected
                        return "E3"
                    }
                    
                    if node1.left == nil {
                        node1.left = r
                    } else if node1.right == nil {
                        node1.right = r
                    } else {
                        //more than 2 children
                        return "E1"
                    }
                    r.parent = node1
                    
                    root = node1
                    
                    isParentOrChildFound = true
                }
                
                if !isParentOrChildFound {
                    
                    if node1.left == nil {
                        node1.left = node2
                    } else if node1.right == nil {
                        node1.right = node2
                    } else {
                        //more than 2 children
                        return "E1"
                    }
                    node2.parent = node1
                    
                    disconnectedNode = node1
                }
                
                if !res.contains(where: { $0.val == node1.val }) {
                    res.append(node1)
                }
                
                if !res.contains(where: { $0.val == node2.val }) {
                    res.append(node2)
                }
            }
        }
        
        if disconnectedNode != nil {
            //multiple roots
            return "E4"
        }
        
        //let exp = printTreeExpression(root, "")
        //print(exp)
        //printTreeStack(root)
        //printPreorderRecurs(root)
        printPreorderStack(root)
        
        return ""
    }
    
    func printTreeExpression(_ root:Node?, _ expStr:String) -> String {
        
        var exp = expStr
        
        if root?.left == nil && root?.right == nil {
            exp += "(\(root?.val ?? ""))"
            return exp
        } else {
            exp += "("
            printTreeExpression(root?.left, exp)
            printTreeExpression(root?.right, exp)
        }
        
        return exp
    }
    
    func printPreorderRecurs(_ root: Node?) {
        if root == nil {
            print(")")
            return
        }
        
        print("(")
        print("\(root?.val ?? "") ")
        
        printPreorderRecurs(root?.left)
        printPreorderRecurs(root?.right)
    }
    
    func printPreorderStack(_ root:Node?) {
        var stack:[Node?] = []
        
        var temp:Node? = root
        
        if root == nil {
            return
        }
        
        stack.append(root)
        var exp = ""
        var countBrackets = 0
        
        while !stack.isEmpty {
            temp = stack.removeLast()
            exp += "("
            exp += temp?.val ?? ""
            
            if temp?.right != nil {
                stack.append(temp?.right)
                countBrackets += 1
            }
            
            if temp?.left != nil {
                stack.append(temp?.left)
                countBrackets += 1
            }
            
            if temp?.right == nil && temp?.left == nil {
                let closeBrackets = [String].init(repeating: ")", count: countBrackets-1)
                let closeBracketsStr = closeBrackets.joined()
                exp += closeBracketsStr
                
                countBrackets = 0
            }
        }
        
        exp += "))"
        
        print(exp)
        print("")
    }
    
    func printTreeStack(_ root:Node?) {
        var stack:[Node?] = []
        var node = root
        
        //first node to be visited will be the left one
        while node != nil {
            stack.append(node)
            node = node?.left
        }
        
        var exp = ""
        
        while stack.count > 0 {
            
            // visit the top node
            node = stack.removeLast()
            exp += "\(node?.val ?? "") "
            if node?.right != nil {
                node = node?.right
                
                // the next node to be visited is the leftmost
                while node != nil {
                    stack.append(node)
                    node = node?.left
                }
            }
        }
    }
    
    /*
     * Complete the function below. (Zig Zag)
     */
    
    /*
     0 0
     3 3
     2 3
     0 2
     2 0
     0 3

     sorted:
     0 0
     0 2
     0 3
     2 0
     2 3
     3 3

     exp: 2
     
     24331 11582
     40676 17095
     36278 30532
     41086 28684
     20917 27058
     12962 30532
     12962 27058
     12686 41706
     11904 36954
     36278 27058
     20917 30532
     28688 28593
     37112 27058
     18069 27058
     32436 27058
     37390 21596
     18069 30532
     27549 28756
     32436 30532
     37112 30532
     
     sorted:
     11904 36954
     12686 41706
     12962 27058
     12962 30532
     18069 27058
     18069 30532
     20917 27058
     20917 30532
     24331 11582
     27549 28756
     28688 28593
     32436 27058
     32436 30532
     36278 27058
     36278 30532
     37112 27058
     37112 30532
     37390 21596
     40676 17095
     41086 28684
     
     exp 6
     
     21121 19969
     31885 37104
     29984 30461
     38734 30461
     10024 30461
     38734 19969
     32008 30461
     28517 19969
     29984 19969
     21121 30461
     31300 19969
     41543 30461
     10024 19969
     32009 19969
     32008 19969
     21560 26580
     32009 30461
     28517 30461
     41543 19969
     31300 30461
     
     exp 9
     */
    struct Point {
        var x = 0
        var y = 0
        
        init(_ x1:Int, _ y1:Int) {
            x = x1
            y = y1
        }
    }
    
    func maxPoints(_ points: [String]) -> Int {
        var res:[Point] = []
        
        for pStr in points {
            let pArr = pStr.split(separator: " ").map(String.init)
            let point = Point(Int(pArr[0])!, Int(pArr[1])!)
            res.append(point)
        }
        
        let sorted = res.sorted(by: {
            
            if $0.x == $1.x {
                return $0.y < $1.y
            }
            
            return $0.x < $1.x
        })
        
        //debug:
        for s in sorted {
            print("\(s.x) \(s.y)")
        }
        
        //print(sorted)
        
        var isYMode = true //starts with Y direction
        let n = sorted.count
        var xArr:[Point] = []
        var yArr:[Point] = []
        
        for i in 0 ..< n {
            let p = sorted[i]
            
            if i == 0 {
                xArr.append(p)
            } else {
                //peek
                if i + 1 < n {
                    if isYMode {
                        
                        if yArr.isEmpty {
                            if sorted[i+1].x != p.x {
                                yArr.append(p)
                                isYMode = false
                            }
                        } else {
                            let lastYPoint = yArr.last!
                            
                            if sorted[i+1].x != p.x && lastYPoint.y == p.y {
                                yArr.append(p)
                                isYMode = false
                            }
                        }
                        
                    } else {
                        
                        let lastXPoint = xArr.last!
                        
                        if sorted[i+1].y != p.y && lastXPoint.y == p.y {
                            xArr.append(p)
                            isYMode = true
                        }
                    }
                } else {
                    if isYMode {
                        let lastYPoint = yArr.last!
                        
                        if lastYPoint.x != p.x && lastYPoint.y == p.y {
                            yArr.append(p)
                            isYMode = false
                        }
                    }
                }
            }
        }
        
        return yArr.count
    }
    
    /*
     sorted:
     10024 19969
     10024 30461
     21121 19969
     21121 30461
     21560 26580
     28517 19969
     28517 30461
     29984 19969
     29984 30461
     31300 19969
     31300 30461
     31885 37104
     32008 19969
     32008 30461
     32009 19969
     32009 30461
     38734 19969
     38734 30461
     41543 19969
     41543 30461

     sorted:
     0 0
     0 2
     0 3
     2 0
     2 3
     3 3
     
     sorted:
     11904 36954
     12686 41706
     12962 27058
     12962 30532
     18069 27058
     18069 30532
     20917 27058
     20917 30532
     24331 11582
     27549 28756
     28688 28593
     32436 27058
     32436 30532
     36278 27058
     36278 30532
     37112 27058
     37112 30532
     37390 21596
     40676 17095
     41086 28684
     */

    //tbc
    //3 / 10
    func maxPoints2(_ points: [String]) -> Int {
        
        //scan, and consider invalid points at the beginnings
        
        var res:[Point] = []
        
        for pStr in points {
            let pArr = pStr.split(separator: " ").map(String.init)
            let point = Point(Int(pArr[0])!, Int(pArr[1])!)
            res.append(point)
        }
        
        let sorted = res.sorted(by: {
            if $0.x == $1.x {
                return $0.y < $1.y
            }
            return $0.x < $1.x
        })
        
        //debug:
        for s in sorted {
            print("\(s.x) \(s.y)")
        }
    
        let n = sorted.count
        
        var i = 0
        var count = 0
        
        while i + 2 < n {
            let p0 = sorted[i]
            let p1 = sorted[i+1]
            let p2 = sorted[i+2]
            
            if p0.x == p1.x && p2.x > p1.x {
                count += 1
                i += 2
            } else {
                i += 1
            }
        }
        
        if i + 1 == (n - 1) {
            let p0 = sorted[i]
            let p1 = sorted[i+1]
            
            if p0.x == p1.x {
                count += 1
            }
        }
        
        return count
    }
    
    /*
     * Complete the function below.
     */
    /*
     * For the unweighted graph, {name}:
     * 1. The number of nodes is {name}Nodes.
     * 2. The number of edges is {name}Edges.
     * 3. An edge exists between {name}From[i] and {name}To[i].
     */
    //11/14
    func maximumDifference(_ gNodes: Int, _ gFrom: [Int], _ gTo: [Int]) -> Int {
        
        var res:[[Int]] = []
        
        for _ in 0 ..< gNodes {
            res.append([])
        }
        
        for i in 0 ..< gFrom.count {
            let f = gFrom[i]
            let t = gTo[i]
            
            if i == 0 {
                res[0].append(f)
                res[0].append(t)
            } else {
                
                for j in 0 ..< res.count {
                    let r = res[j]
                    
                    if r.isEmpty {
                        res[j].append(f)
                        res[j].append(t)
                        break
                    } else {
                        if r.contains(f) {
                            res[j].append(t)
                            break
                        } else if r.contains(t) {
                            res[j].append(f)
                            break
                        }
                    }
                }
            }
        }
        
        var maxRes = 0
        for r in res {
            if let max = r.max(), let min = r.min() {
                let diff = max - min
                if diff > maxRes {
                    maxRes = diff
                }
            }
        }
        
        //print(res)
        
        return maxRes
    }
    
    /*
     * Complete the function below.
     */
    
    /*
     aab
     baa
     res: 1
     */
    
    /*
     wszauoffphsyyyrvcfsewdrdwpocydurpzvsmfzcpiwwvhrjvwfsresfbckiubyhkulwigowqggznidxleylyqhwms
     qagrsoehismggrurufqzlckfzwwwoslrvuuhpesyvcrcixyozpbjkfhywzbvpynilmcyhdywiwwvdfswdefwpfyssd
     res: 656
     
     aaaaaaaaab
     abaaaaaaaa
     res: 2
     */
    
    func easyStrings() -> Int {
        
        let a = "wszauoffphsyyyrvcfsewdrdwpocydurpzvsmfzcpiwwvhrjvwfsresfbckiubyhkulwigowqggznidxleylyqhwms"
        let b = "qagrsoehismggrurufqzlckfzwwwoslrvuuhpesyvcrcixyozpbjkfhywzbvpynilmcyhdywiwwvdfswdefwpfyssd"
        
        var count = 0
        
        if a != b {
            let charsA = Array(a).map(String.init)
            let charsB = Array(b).map(String.init)
            
            let n = charsA.count
            var aArr = charsA
            
            //try swap
            aArr.swapAt(0, aArr.count - 1)
            if aArr.joined() == b {
                return 1
            } else {
                aArr = charsA
                var joined = aArr.joined()
                var i = 0
                
                while joined != b {
                    
                    if i + 1 < n {
                        aArr.swapAt(i, i + 1)
                        count += 1
                    } else {
                        i = 0
                    }
                    
                    joined = aArr.joined()
                }
            }
        }
        
        return count
    }
    
    //https://stackoverflow.com/questions/18491591/finding-minimum-moves-required-for-making-2-strings-equal
    //https://www.careercup.com/question?id=5100378148306944
    func easyStrings2() -> Int {
        
        let a = "wszauoffphsyyyrvcfsewdrdwpocydurpzvsmfzcpiwwvhrjvwfsresfbckiubyhkulwigowqggznidxleylyqhwms"
        let b = "qagrsoehismggrurufqzlckfzwwwoslrvuuhpesyvcrcixyozpbjkfhywzbvpynilmcyhdywiwwvdfswdefwpfyssd"
        
        var count = 0
        
        var charsA = Array(a).map(String.init)
        let charsB = Array(b).map(String.init)
        
        let nA = charsA.count
        //let nB = charsB.count
        
        if charsA.first == charsB.last {
            //swap first and last
            charsA.swapAt(0, nA - 1)
            count += 1
        }
        
        var i = 0
        while charsA != charsB {
            let cA = charsA[i]
            let cB = charsB[i]
            
            if cA != cB {
                if i + 1 < nA {
                    charsA.swapAt(i, i+1)
                    count += 1
                } else {
                    i = -1 //reset
                }
            }
            
            i += 1
        }
        
        return count
    }
    
    func easyStrings3() -> Int {

//        let a = "aaaaaaaaab"
//        let b = "abaaaaaaaa"
        
        let a = "wszauoffphsyyyrvcfsewdrdwpocydurpzvsmfzcpiwwvhrjvwfsresfbckiubyhkulwigowqggznidxleylyqhwms"
        let b = "qagrsoehismggrurufqzlckfzwwwoslrvuuhpesyvcrcixyozpbjkfhywzbvpynilmcyhdywiwwvdfswdefwpfyssd"
        
        var count = 0
        
        var charsA = Array(a).map(String.init)
        var charsB = Array(b).map(String.init)
        
        let nA = charsA.count
        let nB = charsB.count
        
        if charsA.first == charsB.last {
            //swap first and last
            charsA.swapAt(0, nA - 1)
            count += 1
        }
        
        var i = 0
        while charsA != charsB {
            let cA = charsA[i]
            let cB = charsB[i]
            
            if cA != cB {
                if i + 1 < nA {
                    charsA.swapAt(i, i+1)
                    count += 1
                } else {
                    i = 0 //reset
                }
            }
            
            if charsA != charsB {
                if cA != cB {
                    if i + 1 < nB {
                        charsB.swapAt(i, i+1)
                        count += 1
                    } else {
                        i = 0 //reset
                    }
                }
            }
            
            i += 1
        }
        
        return count
    }

    //Largest subset sum, LCM
    //10/13, timeout on last 3...
    func maxSubsetSum(_ k: [Int]) -> [Int] {
        /*
         * Write your code here.
         */
        var res:[Int] = []
        for v in k {
            var sum = 0
            for i in 1 ..< v+1 {
                if v % i == 0 {
                    sum += i
                }
            }
            res.append(sum)
        }
        
        return res
    }
    
    //final discounted price
    //3/13 wrong answers, timeout...
    func finalPrice() -> Void {
        
        //let prices = [2, 3, 1, 2, 4, 2], exp: 8
        //let prices = [5, 1, 3, 4, 6, 2]// exp: 14, 1 5
        let prices = [1, 3, 3, 2, 5]// exp: 9, 0 3 4
        
        let n = prices.count
        var sum = 0
        var res:[Int] = []
        
        for i in  0 ..< n {
            
            let curP = prices[i]
            
            if i + 1 < n {
                let sub = prices[i+1 ..< n]
                let min = sub.min()!
                
                //check if sub contains current price item, if yes, no increment (price: 0)
                if !sub.contains(curP) {
                    if curP > min {
                        let diff = curP - min
                        sum += diff
                    } else {
                        sum += curP
                        res.append(i)
                    }
                }
                
            } else {
                sum += curP
                res.append(i)
            }
        }
        
        print(sum)
        
        var resStr = ""
        for r in res {
            resStr += "\(r) "
        }
        
        print(resStr)
        //print("")
    }
    
    func substringCalculator1() -> Int {
        
        //let s = "kincenvizh"
        
        let s = "ghaqjdrmnegmrlrlfpjmnnngpwalzknsencuzwsnhfltwohdgbmvfuwtquosrnyerucntxxkfqehjqygcarxogvcfkljzbzutxphpyykapncjfclnhndzxghelyvzpylazhuutmcquusexzbhsfsmbnlvnlemzvfqbfzwquairhpylnbvyhiyamztlhfchhbwrqddmuzsprfdwuqqchcpeakkexackwwzihkfenwzwckynymgqydvjtovaoezkjjurylqcuonsujycziobnfnmuwnoxcdtahpituykvgpyyshvukrstcbmnsqtjseflwywnslmvnqrtnzkyaddkjamrezprqgoenzsdryygbkeahfiduozpwkrgmatszaxmwodsqiocvagbvxyqotpaujnqvqgjmfxnxhfbwqjpgodlxdrxpjpmzeabpgqrzpxomniknjkdiwtfgyvwvekrnoupwkcbtmpcfamzrghgrznuedkybmfwctdghcfawajlxfkzhdamuygjbcwnyglkjlfmpxfdtovkqbshhrfrnyjrgxgiozsuuncnwofkqzsypwgeikpfbhryhpszegdfajzvqlwwqlnvdtdiuckcvvosrdweohnmawqonjbxyjjhlccuteeshfrxxdhzgakwjqbymnaeudcmibsytyajsgdpfvrutcpglzxdevenevmkgalcrpknuvcrnkuboennhyzirfwvtozzijujsckbxqpocakzrbwgpqgjjmsrtwmvhwyraukbuxfvebeylfpipzwjdzlmgslbtwzataxgqpasrssnfwndldwkdutdqcmcpyanrbdsxrvcvpsywjambtbzlcrvzesuhvyvwwuwwdznigxjxknfajpknqutfvvqynkpvkzgypasevrpxofbymdzcitoqolwqegocuyqsexhumzmckzuuwkamolbltlifongpvkcnrnnuplftqbxpdnegdqlymftqyrxcnzmu"
        
        var hash:[String:Int] = [:]
        var chars = Array(s).map(String.init)
        let n = chars.count
        var count = 0
        
        for i in 0 ..< n {
            let sub = Array(chars[i ..< n])
            let nSub = sub.count
            
            for j in 0 ..< nSub {
                let subDistinct = sub[0 ..< (nSub - j)].joined()
                if hash[subDistinct] == nil {
                    hash[subDistinct] = 1
                    count += 1
                } else {
                    continue
                }
            }
        }
        
        return count
    }
    
    func substringCalculator1a() -> Int {
        
        //let s = "kincenvizh"
        
        let s = "ghaqjdrmnegmrlrlfpjmnnngpwalzknsencuzwsnhfltwohdgbmvfuwtquosrnyerucntxxkfqehjqygcarxogvcfkljzbzutxphpyykapncjfclnhndzxghelyvzpylazhuutmcquusexzbhsfsmbnlvnlemzvfqbfzwquairhpylnbvyhiyamztlhfchhbwrqddmuzsprfdwuqqchcpeakkexackwwzihkfenwzwckynymgqydvjtovaoezkjjurylqcuonsujycziobnfnmuwnoxcdtahpituykvgpyyshvukrstcbmnsqtjseflwywnslmvnqrtnzkyaddkjamrezprqgoenzsdryygbkeahfiduozpwkrgmatszaxmwodsqiocvagbvxyqotpaujnqvqgjmfxnxhfbwqjpgodlxdrxpjpmzeabpgqrzpxomniknjkdiwtfgyvwvekrnoupwkcbtmpcfamzrghgrznuedkybmfwctdghcfawajlxfkzhdamuygjbcwnyglkjlfmpxfdtovkqbshhrfrnyjrgxgiozsuuncnwofkqzsypwgeikpfbhryhpszegdfajzvqlwwqlnvdtdiuckcvvosrdweohnmawqonjbxyjjhlccuteeshfrxxdhzgakwjqbymnaeudcmibsytyajsgdpfvrutcpglzxdevenevmkgalcrpknuvcrnkuboennhyzirfwvtozzijujsckbxqpocakzrbwgpqgjjmsrtwmvhwyraukbuxfvebeylfpipzwjdzlmgslbtwzataxgqpasrssnfwndldwkdutdqcmcpyanrbdsxrvcvpsywjambtbzlcrvzesuhvyvwwuwwdznigxjxknfajpknqutfvvqynkpvkzgypasevrpxofbymdzcitoqolwqegocuyqsexhumzmckzuuwkamolbltlifongpvkcnrnnuplftqbxpdnegdqlymftqyrxcnzmu"
        
        var res:Set<String> = []
        let chars = Array(s).map(String.init)
        let n = s.count
        
        for i in 0 ..< n {
            let sub = Array(chars[i ..< n])
            let nSub = sub.count
            
            for j in 0 ..< nSub {
                let subDistinct = sub[0 ..< (nSub - j)].joined()
                res.insert(subDistinct)
            }
        }
        
        let count = res.count
        
        return count
    }
    
    //timeout on substring calculator
    func substringCalculator2() -> Int {
        
        //using double loop
        
//        let s = "ghaqjdrmnegmrlrlfpjmnnngpwalzknsencuzwsnhfltwohdgbmvfuwtquosrnyerucntxxkfqehjqygcarxogvcfkljzbzutxphpyykapncjfclnhndzxghelyvzpylazhuutmcquusexzbhsfsmbnlvnlemzvfqbfzwquairhpylnbvyhiyamztlhfchhbwrqddmuzsprfdwuqqchcpeakkexackwwzihkfenwzwckynymgqydvjtovaoezkjjurylqcuonsujycziobnfnmuwnoxcdtahpituykvgpyyshvukrstcbmnsqtjseflwywnslmvnqrtnzkyaddkjamrezprqgoenzsdryygbkeahfiduozpwkrgmatszaxmwodsqiocvagbvxyqotpaujnqvqgjmfxnxhfbwqjpgodlxdrxpjpmzeabpgqrzpxomniknjkdiwtfgyvwvekrnoupwkcbtmpcfamzrghgrznuedkybmfwctdghcfawajlxfkzhdamuygjbcwnyglkjlfmpxfdtovkqbshhrfrnyjrgxgiozsuuncnwofkqzsypwgeikpfbhryhpszegdfajzvqlwwqlnvdtdiuckcvvosrdweohnmawqonjbxyjjhlccuteeshfrxxdhzgakwjqbymnaeudcmibsytyajsgdpfvrutcpglzxdevenevmkgalcrpknuvcrnkuboennhyzirfwvtozzijujsckbxqpocakzrbwgpqgjjmsrtwmvhwyraukbuxfvebeylfpipzwjdzlmgslbtwzataxgqpasrssnfwndldwkdutdqcmcpyanrbdsxrvcvpsywjambtbzlcrvzesuhvyvwwuwwdznigxjxknfajpknqutfvvqynkpvkzgypasevrpxofbymdzcitoqolwqegocuyqsexhumzmckzuuwkamolbltlifongpvkcnrnnuplftqbxpdnegdqlymftqyrxcnzmu"
        
        let s = "kincenvizhvizh"
        
        var res:[String] = []
        let chars = Array(s).map { String($0) }
        let n = s.count
        var hash:[String:Int] = [:]
        
        //debug
        print("s len: \(s.count)")
        print("chars count: \(chars.count)")
        print("")
        
        var reduce = 0
        var x = 1
        for i in 0 ..< n {
            for j in 0 ..< n - reduce {
                let end = n - j
                let sub = chars[i ..< end].joined()
                if hash[sub] == nil {
                    hash[sub] = 0
                    print("\(x): \(sub)")
                    res.append(sub)
                    x += 1
                } else {
                    hash[sub]! += 1
                    
                    //debug
                    print("\(x): \(sub)(duplicate, not added)")
                }
            }
            
            reduce += 1
        }
        
        //debug
        print("")
        let hashPrint = hash.sorted(by: { $0.value > $1.value }).map({ "\($0.key): \($0.value)\n" }).joined()
        print(hashPrint)
        print("res count (substringCalculator2a): \(res.count)")
        
        return res.count
    }
    
    //timeout on substring calculator
    func substringCalculator2a() -> Int {
        
        //using double loop
        //use Set for hash
        //use hash for counting alphabet occurences
        
        let s = "ghaqjdrmnegmrlrlfpjmnnngpwalzknsencuzwsnhfltwohdgbmvfuwtquosrnyerucntxxkfqehjqygcarxogvcfkljzbzutxphpyykapncjfclnhndzxghelyvzpylazhuutmcquusexzbhsfsmbnlvnlemzvfqbfzwquairhpylnbvyhiyamztlhfchhbwrqddmuzsprfdwuqqchcpeakkexackwwzihkfenwzwckynymgqydvjtovaoezkjjurylqcuonsujycziobnfnmuwnoxcdtahpituykvgpyyshvukrstcbmnsqtjseflwywnslmvnqrtnzkyaddkjamrezprqgoenzsdryygbkeahfiduozpwkrgmatszaxmwodsqiocvagbvxyqotpaujnqvqgjmfxnxhfbwqjpgodlxdrxpjpmzeabpgqrzpxomniknjkdiwtfgyvwvekrnoupwkcbtmpcfamzrghgrznuedkybmfwctdghcfawajlxfkzhdamuygjbcwnyglkjlfmpxfdtovkqbshhrfrnyjrgxgiozsuuncnwofkqzsypwgeikpfbhryhpszegdfajzvqlwwqlnvdtdiuckcvvosrdweohnmawqonjbxyjjhlccuteeshfrxxdhzgakwjqbymnaeudcmibsytyajsgdpfvrutcpglzxdevenevmkgalcrpknuvcrnkuboennhyzirfwvtozzijujsckbxqpocakzrbwgpqgjjmsrtwmvhwyraukbuxfvebeylfpipzwjdzlmgslbtwzataxgqpasrssnfwndldwkdutdqcmcpyanrbdsxrvcvpsywjambtbzlcrvzesuhvyvwwuwwdznigxjxknfajpknqutfvvqynkpvkzgypasevrpxofbymdzcitoqolwqegocuyqsexhumzmckzuuwkamolbltlifongpvkcnrnnuplftqbxpdnegdqlymftqyrxcnzmu"
        
        //let s = "kincenvizhvizh"
        
        var res:Set<String> = []
        let chars = Array(s).map { String($0) }
        let n = s.count
        var hash:[String:Int] = [:]
        
        //debug
        print("s len: \(s.count)")
        print("chars count: \(chars.count)")
        print("")
        
        //loop chars
        for c in chars {
            if hash[c] == nil {
                hash[c] = 0
            } else {
                hash[c]! += 1
            }
        }
        
        //debug
        let hashPrint = hash.sorted(by: { $0.value > $1.value }).map({ "\($0.key): \($0.value)\n" }).joined()
        print(hashPrint)
        
        let duplicates = hash.filter({ $0.value > 0 })
        let dupSum = duplicates.reduce(0) { $0 + ($1.value) }
        print("dupSum: \(dupSum)")
        
        
        var reduce = 0
        var x = 1
        for i in 0 ..< n {
            for j in 0 ..< n - reduce {
                let end = n - j
                let sub = chars[i ..< end].joined()
                
                if res.contains(sub) {
                    print("\(x): \(sub)(duplicate, not added)")
                } else {
                    print("\(x): \(sub)")
                    res.insert(sub)
                    x += 1
                }
            }
            
            reduce += 1
        }
        
        //debug
        print("")
        print("res count (substringCalculator2): \(res.count)")
        
        return res.count
    }
    
    func substringCalculator3() -> Int {
        
        //using Set
        
        let s = "ghaqjdrmnegmrlrlfpjmnnngpwalzknsencuzwsnhfltwohdgbmvfuwtquosrnyerucntxxkfqehjqygcarxogvcfkljzbzutxphpyykapncjfclnhndzxghelyvzpylazhuutmcquusexzbhsfsmbnlvnlemzvfqbfzwquairhpylnbvyhiyamztlhfchhbwrqddmuzsprfdwuqqchcpeakkexackwwzihkfenwzwckynymgqydvjtovaoezkjjurylqcuonsujycziobnfnmuwnoxcdtahpituykvgpyyshvukrstcbmnsqtjseflwywnslmvnqrtnzkyaddkjamrezprqgoenzsdryygbkeahfiduozpwkrgmatszaxmwodsqiocvagbvxyqotpaujnqvqgjmfxnxhfbwqjpgodlxdrxpjpmzeabpgqrzpxomniknjkdiwtfgyvwvekrnoupwkcbtmpcfamzrghgrznuedkybmfwctdghcfawajlxfkzhdamuygjbcwnyglkjlfmpxfdtovkqbshhrfrnyjrgxgiozsuuncnwofkqzsypwgeikpfbhryhpszegdfajzvqlwwqlnvdtdiuckcvvosrdweohnmawqonjbxyjjhlccuteeshfrxxdhzgakwjqbymnaeudcmibsytyajsgdpfvrutcpglzxdevenevmkgalcrpknuvcrnkuboennhyzirfwvtozzijujsckbxqpocakzrbwgpqgjjmsrtwmvhwyraukbuxfvebeylfpipzwjdzlmgslbtwzataxgqpasrssnfwndldwkdutdqcmcpyanrbdsxrvcvpsywjambtbzlcrvzesuhvyvwwuwwdznigxjxknfajpknqutfvvqynkpvkzgypasevrpxofbymdzcitoqolwqegocuyqsexhumzmckzuuwkamolbltlifongpvkcnrnnuplftqbxpdnegdqlymftqyrxcnzmu"
        var res:Set<String> = []
        
        let chars = Array(s).map { String($0) }
        let n = s.count
     
        var reduce = 0
        for i in 0 ..< n {
            for j in 0 ..< n - reduce {
                let end = n - j
                let sub = chars[i ..< end].joined()
                res.insert(sub)
            }
            reduce += 1
        }
        
        print("res count (substringCalculator3): \(res.count)")
        
        return res.count
    }
    
    func substringCalculator4() -> Int {
        
        //using count
        
        //expected: 499011
        
        //total: 500,500
        //diff to expected: 1489
        
//        let s = "ghaqjdrmnegmrlrlfpjmnnngpwalzknsencuzwsnhfltwohdgbmvfuwtquosrnyerucntxxkfqehjqygcarxogvcfkljzbzutxphpyykapncjfclnhndzxghelyvzpylazhuutmcquusexzbhsfsmbnlvnlemzvfqbfzwquairhpylnbvyhiyamztlhfchhbwrqddmuzsprfdwuqqchcpeakkexackwwzihkfenwzwckynymgqydvjtovaoezkjjurylqcuonsujycziobnfnmuwnoxcdtahpituykvgpyyshvukrstcbmnsqtjseflwywnslmvnqrtnzkyaddkjamrezprqgoenzsdryygbkeahfiduozpwkrgmatszaxmwodsqiocvagbvxyqotpaujnqvqgjmfxnxhfbwqjpgodlxdrxpjpmzeabpgqrzpxomniknjkdiwtfgyvwvekrnoupwkcbtmpcfamzrghgrznuedkybmfwctdghcfawajlxfkzhdamuygjbcwnyglkjlfmpxfdtovkqbshhrfrnyjrgxgiozsuuncnwofkqzsypwgeikpfbhryhpszegdfajzvqlwwqlnvdtdiuckcvvosrdweohnmawqonjbxyjjhlccuteeshfrxxdhzgakwjqbymnaeudcmibsytyajsgdpfvrutcpglzxdevenevmkgalcrpknuvcrnkuboennhyzirfwvtozzijujsckbxqpocakzrbwgpqgjjmsrtwmvhwyraukbuxfvebeylfpipzwjdzlmgslbtwzataxgqpasrssnfwndldwkdutdqcmcpyanrbdsxrvcvpsywjambtbzlcrvzesuhvyvwwuwwdznigxjxknfajpknqutfvvqynkpvkzgypasevrpxofbymdzcitoqolwqegocuyqsexhumzmckzuuwkamolbltlifongpvkcnrnnuplftqbxpdnegdqlymftqyrxcnzmu"
        
       let s = "kincenvizhvizh"
        
        let chars = Array(s).map { String($0) }
        let n = s.count
        var hash:[String:Int] = [:]
        
        for i in 0 ..< n {
            
            let c = chars[i]
            
            if hash[c] == nil {
                hash[c] = 0
            } else {
                hash[c]! += 1
            }
            
            let end = n - i
            if i < end {
                let sub = chars[i ..< end].joined()
                if hash[sub] == nil {
                    hash[sub] = 0
                } else {
                    hash[sub]! += 1
                }
            }
        }
        
        let duplicates = hash.filter({ $0.value > 0 })
        let dupSum = duplicates.reduce(0) { $0 + ($1.value) }
        
        //debug
        var count = 0
        for key in duplicates.keys {
            count += hash[key]!
        }
        
        let hashPrint = hash.sorted(by: { $0.value > $1.value }).map({ "\($0.key): \($0.value)\n" }).joined()
        print(hashPrint)
        print("count: \(count)")
        print("dupSum: \(dupSum)")
        
        let sum = (n * (n + 1)) / 2
        let total = sum - dupSum
        
        print("total: \(total)")
        //my res: 499526, expected: 499011
        //diff: 515
        
        //still wrong
        
        return total
    }
    
    func substringCalculator5() -> Int {
        let s = "ghaqjdrmnegmrlrlfpjmnnngpwalzknsencuzwsnhfltwohdgbmvfuwtquosrnyerucntxxkfqehjqygcarxogvcfkljzbzutxphpyykapncjfclnhndzxghelyvzpylazhuutmcquusexzbhsfsmbnlvnlemzvfqbfzwquairhpylnbvyhiyamztlhfchhbwrqddmuzsprfdwuqqchcpeakkexackwwzihkfenwzwckynymgqydvjtovaoezkjjurylqcuonsujycziobnfnmuwnoxcdtahpituykvgpyyshvukrstcbmnsqtjseflwywnslmvnqrtnzkyaddkjamrezprqgoenzsdryygbkeahfiduozpwkrgmatszaxmwodsqiocvagbvxyqotpaujnqvqgjmfxnxhfbwqjpgodlxdrxpjpmzeabpgqrzpxomniknjkdiwtfgyvwvekrnoupwkcbtmpcfamzrghgrznuedkybmfwctdghcfawajlxfkzhdamuygjbcwnyglkjlfmpxfdtovkqbshhrfrnyjrgxgiozsuuncnwofkqzsypwgeikpfbhryhpszegdfajzvqlwwqlnvdtdiuckcvvosrdweohnmawqonjbxyjjhlccuteeshfrxxdhzgakwjqbymnaeudcmibsytyajsgdpfvrutcpglzxdevenevmkgalcrpknuvcrnkuboennhyzirfwvtozzijujsckbxqpocakzrbwgpqgjjmsrtwmvhwyraukbuxfvebeylfpipzwjdzlmgslbtwzataxgqpasrssnfwndldwkdutdqcmcpyanrbdsxrvcvpsywjambtbzlcrvzesuhvyvwwuwwdznigxjxknfajpknqutfvvqynkpvkzgypasevrpxofbymdzcitoqolwqegocuyqsexhumzmckzuuwkamolbltlifongpvkcnrnnuplftqbxpdnegdqlymftqyrxcnzmu"
        var res:Set<String> = []
        
        let chars = Array(s).map { String($0) }
        let n = s.count
        
        //loop once
        for i in 0 ..< n {
            let end = n - i
            let sub = chars[0 ..< end].joined()
            res.insert(sub)
        }
        
        var reduce = 1
        for i in 1 ..< n {
            for j in 0 ..< n - reduce {
                let end = n - j
                let sub = chars[i ..< end].joined()
                res.insert(sub)
            }
            reduce += 1
        }
        
        print("res count (substringCalculator5): \(res.count)")
        
        return res.count
    }
    
    //====
    
    //build the subsequences
    //2/8
    func stringSubstringAlphabetically(_ s:String) -> [String] {
        
        var res:Set<String> = []
        
        let chars = Array(s).map(String.init)
        let n = chars.count
        
        res.insert(s)
        
        for i in 0 ..< n - 1 {
            
            let charI = chars[i]
            res.insert(charI)
            
            for j in i+1 ..< n {
                
                let charJ = chars[j]
                
                res.insert(charJ)
                res.insert("\(charI)\(charJ)")
            }
        }
        
        let sorted = res.sorted()
        
        //print(sorted)
        
        return sorted
    }
    
    func stringPermutationAlphabeticallySwap(_ s:String) -> [String] {
        
        let n = s.count
        
        let chars = Array(s).map(String.init)
        
        var c = [Int].init(repeating: 0, count: n)
        var A = chars
        
        var res:[String] = []
        
        var i = 0
        while i < n {
            if c[i] < i {
                if i % 2 == 0 {
                    A.swapAt(0, i)
                } else {
                    A.swapAt(c[i], i)
                }
                
                res.append(A.joined())
                
                c[i] += 1
                i = 0
            }
            else {
                c[i] = 0
                i += 1
            }
        }
        
        let sorted = res.sorted()
        //print(sorted)
        
        return sorted
    }
    
    func matches(for regex: String, in text: String) -> [String] {
        
        do {
            let regex = try NSRegularExpression(pattern: regex)
            let results = regex.matches(in: text,
                                        range: NSRange(text.startIndex..., in: text))
            return results.map {
                String(text[Range($0.range, in: text)!])
            }
        } catch let error {
            print("invalid regex: \(error.localizedDescription)")
            return []
        }
    }
    
    func findSubstringWithStar() -> Int {
        
        //let s = "xabcdey"
        //let x = "ab***de"
        
        //        let s = "juliasamanthantjulia"
        //        let x = "ant"
        
        //        let s = "juliasamanthasamanthajulia"
        //        let x = "has"
        
        let s = "juliasamanthasamanthajulia"
        let x = "ant*as"
        
        var startIdx = -1
        
        let xArr = x.split(separator: "*").map(String.init)
        if xArr.count == 2 {
            let left = xArr[0]
            let right = xArr[1]
            
            let resArr = matches(for: "\(left).\(right)", in: s)
            if resArr.count == 1 {
                let res = resArr[0]
                if let range = s.range(of: res) {
                    startIdx = Int(s.distance(from: s.startIndex, to: range.lowerBound))
                }
            }
            
        } else if xArr.count == 1 {
            if let range = s.range(of: x) {
                startIdx = Int(s.distance(from: s.startIndex, to: range.lowerBound))
            }
        }
        
        print("startIdx: \(startIdx)")
        
        return startIdx
    }
    
    func findSubstringWithStar2() -> Int {
        
        //this is faster than findSubstringWithStar()
        
        //let s = "xabcdey"
        //var x = "ab*de"
        
        //        let s = "juliasamanthantjulia"
        //        var x = "ant"
        
        //        let s = "juliasamanthasamanthajulia"
        //        var x = "has"
        
        let s = "juliasamanthasamanthajulia"
        var x = "ant*as"
        
        var startIdx = -1
        
        let xArr = x.split(separator: "*").map(String.init)
        if xArr.count == 2 {
            
            x = x.replacingOccurrences(of: "*", with: ".")
            
            let resArr = matches(for: x, in: s)
            if resArr.count == 1 {
                let res = resArr[0]
                if let range = s.range(of: res) {
                    startIdx = Int(s.distance(from: s.startIndex, to: range.lowerBound))
                }
            }
        } else if xArr.count == 1 {
            if let range = s.range(of: x) {
                startIdx = Int(s.distance(from: s.startIndex, to: range.lowerBound))
            }
        }
        
        return startIdx
    }
    
    func findSubstringWithStar3() -> Int {
        
        //faster than findSubstringWithStar2()
        
        //let s = "xabcdey"
        //var x = "ab*de"
        
        //        let s = "juliasamanthantjulia"
        //        var x = "ant"
        
        //                let s = "juliasamanthasamanthajulia"
        //                var x = "has"
        
        let s = "juliasamanthasamanthajulia"
        var x = "ant*as"
        
        var startIdx = -1
        
        x = x.replacingOccurrences(of: "*", with: ".")
        
        let resArr = matches(for: x, in: s)
        if resArr.count == 1 {
            let res = resArr[0]
            if let range = s.range(of: res) {
                startIdx = Int(s.distance(from: s.startIndex, to: range.lowerBound))
            }
        }
        
        return startIdx
    }
    
    func findSubstringWithStar4() -> Int {
        
        //faster than findSubstringWithStar3()
        //fastest of all !
        
        //        let s = "juliasamanthasamanthajulia"
        //        var x = "has"
        
        let s = "juliasamanthasamanthajulia"
        var x = "ant*as"
        
        x = x.replacingOccurrences(of: "*", with: ".")
        
        var startIdx = -1
        
        if let range = s.range(of: x, options: .regularExpression) {
            startIdx = Int(s.distance(from: s.startIndex, to: range.lowerBound))
        }
        
        return startIdx
    }
    
    //valid coordinates
    /*
     (75, 180)
     (+90.0, -147.45)
     (77.11112223331, 149.99999999)
     (+90, +180)
     (90, 180)
     (-90.00000, -180.0000)
     (75, 280)
     (+190.0, -147.45)
     (77.11112223331, 249.99999999)
     (+90, +180.2)
     (90., 180.)
     (-090.00000, -180.0000)
     
     //valid range:
     -90 <= x <= +90
     -180 <= Y <= 180
     
     exp output:
     Valid
     Valid
     Valid
     Valid
     Valid
     Valid
     Invalid
     Invalid
     Invalid
     Invalid
     Invalid
     Invalid
     */
    
    //X = -90 to 90
    //Y = -180 to 180
    
    //consider symbols for degrees or radians or N/S/E/W
    
    //tbc
    //4/6
    func isValidCoordinate() -> Void {
        
        let coordinates = [
            "(75, 180)",
            "(+90.0, -147.45)",
            "(77.11112223331, 149.99999999)",
            "(+90, +180)",
            "(90, 180)",
            "(-90.00000, -180.0000)",
            
            "(75, 280)",
            "(+190.0, -147.45)",
            "(77.11112223331, 249.99999999)",
            "(+90, +180.2)",
            "(90., 180.)",
            "(-090.00000, -180.0000)"
        ]
        
        print("")
        
        for s in coordinates {
            
            let cleanCoord = s.replacingOccurrences(of: "[\\() ]", with: "", options: .regularExpression, range: nil)
            let splits = cleanCoord.characters.split(separator: ",")
            
            var isInRange = false
            
            if splits.count == 2 {
                let x = String(splits[0])
                let y = String(splits[1])
                
                if let dx = Double(x), let dy = Double(y) {
                    if dx >= -90 && dx <= 90 && dy >= -180 && dy <= 180 {
                        isInRange = true
                    }
                }
            }
            
            if isInRange {
                if let _ = s.range(of: "\\([-+]?[0-9][0-9]?\\.?[0-9]+\\, [-+]?[1]?[0-9][0-9]?\\.?[0-9]+\\)", options: .regularExpression) {
                    print("Valid")
                    //print("\(s): Valid")
                } else {
                    print("Invalid")
                    //print("\(s): Invalid")
                }
            } else {
                print("Invalid")
                //print("\(s): Invalid")
            }
        }
        
        //print("")
    }
    
    //magical binary
    /*
     input:
     11011000
     
     swap 10 and 1100 becomes
     11100100
     
     output:
     11100100
     */
    func largestMagical(binString: String) -> String {
        
        return ""
    }
    
    func maximumTwo() -> [Int] {
        
        return []
    }
    
    /*
     * For the unweighted graph, {name}:
     * 1. The number of nodes is {name}Nodes.
     * 2. The number of edges is {name}Edges.
     * 3. An edge exists between {name}From[i] and {name}To[i].
     */
    
    /*
     1 2
     1 3
     2 3
     2 4
     3 4
     4 5
     
     two cycles:
     1. (1, 2, 3): 0 + 1 + 1 = 2
     2. (2, 3, 4): 1 + 1 + 1 = 3
     return 2
     
     2 1
     3 6
     5 1
     1 7
     
     return: -1
     */
    
    class FriendNode {
        var val = 0
        var friends:[FriendNode] = []
        
        init(_ v:Int) {
            val = v
        }
    }
    
    //8/14 wrong answers.... :(
    func bestTrio() -> Int {
        
        //        let friendsFrom = [1, 1, 2, 2, 3, 4]
        //        let friendsTo = [2, 3, 3, 4, 4, 5]
        
        let friendsFrom = [2, 3, 5, 1]
        let friendsTo = [1, 6, 1, 7]
        
        let n = friendsFrom.count
        var res:[FriendNode] = []
        var cycles:[String] = []
        
        for i in 0 ..< n {
            let fromVal = friendsFrom[i]
            let toVal = friendsTo[i]
            
            var fromNode:FriendNode? = nil
            var toNode:FriendNode? = nil
            
            if let idxFrom = res.index(where: { $0.val == fromVal }) {
                fromNode = res[idxFrom]
                
                if let idxTo = res.index(where: { $0.val == toVal }) {
                    toNode = res[idxTo]
                    
                    if let fromNode = fromNode, let toNode = toNode {
                        let setFromFriends = Set<Int>(fromNode.friends.map({ $0.val }))
                        let setToFriends = Set<Int>(toNode.friends.map({ $0.val }))
                        
                        let resArr = Array(setFromFriends.intersection(setToFriends))
                        for r in resArr {
                            cycles.append("\(fromNode.val),\(toNode.val),\(r)")
                        }
                    }
                    
                } else {
                    toNode = FriendNode(toVal)
                }
                
            } else {
                fromNode = FriendNode(fromVal)
                toNode = FriendNode(toVal)
            }
            
            if let fromNode = fromNode, let toNode = toNode {
                
                fromNode.friends.append(toNode)
                toNode.friends.append(fromNode)
                
                if !res.contains(where: { $0.val == fromVal }) {
                    res.append(fromNode)
                }
                
                if !res.contains(where: { $0.val == toVal }) {
                    res.append(toNode)
                }
            }
        }
        
        var minSum = Int.max
        
        for cyc in cycles {
            let splits = cyc.components(separatedBy: ",").map({ Int($0)! })
            let filters = res.filter({ splits.contains($0.val) })
            
            let setSplits = Set<Int>(splits)
            
            var sum = 0
            for f in filters {
                let friendsVal = f.friends.map({ $0.val })
                var setFriends = Set<Int>(friendsVal)
                setFriends.insert(f.val)//includes itself !
                
                let diffs = setSplits.symmetricDifference(setFriends)
                sum += diffs.count
            }
            
            if sum < minSum {
                minSum = sum
            }
        }
        
        if cycles.isEmpty {
            return -1
        }
        
        return minSum
    }
    
    /*
     4
     1
     3
     2
     5
     
     output: 1 (4, 3, 2)
     
     
     15
     10
     1
     7
     8
     
     output: 3 (15, 10, 1), (15, 10, 7), (15, 10, 8)
     
     4, 1, 3
     
     */
    
    //3/12
    func maxInversions() -> Int {
        
        //let prices = [4, 1, 3, 2, 5]
        let prices = [15, 10, 1, 7, 8]
        
        var i = 0
        var j = 0
        var k = 0
        
        let n = prices.count
        var count = 0
        
        while i < n {
            
            let pI = prices[i]
            
            if i + 1 < n {
                
                let pINext = prices[i+1]
                
                if pINext < pI {
                    
                    j = i + 1
                    k = j + 1
                    
                    while k < n {
                        
                        let pJ = prices[j]
                        let pK = prices[k]
                        
                        if pI > pJ && pJ > pK && i < j && j < k {
                            count += 1
                        }
                        
                        k += 1
                    }
                }
            }
            
            i += 1
        }
        
        return count
    }
    
    //???
    func maxInversions2() -> Int {
        
        //let prices = [4, 1, 3, 2, 5]
        let prices = [15, 10, 1, 7, 8]
        
        var i = 0
        var j = 0
        var k = 0
        
        let n = prices.count
        var count = 0
        
        while i < n - 2 {
            
            let pI = prices[i]

            j = i + 1
            while j < n - 1 {
                
                let pJ = prices[j]
                
                k = j + 1
                while k < n {
                    let pK = prices[k]
                    if pI > pJ && pJ > pK && i < j && j < k {
                        count += 1
                    }
                   
                    k += 1
                }
                
                j += 1
            }
            
            i += 1
        }
        
        return count
    }
    
    func maxInversions3() -> Int {
        
        //let prices = [4, 1, 3, 2, 5]
        let prices = [15, 10, 1, 7, 8]
        
        let n = prices.count
        var count = 0
        
        for i in 0 ..< n - 2 {
            let pI = prices[i]
            
            for j in i+1 ..< n - 1 {
                let pJ = prices[j]
                
                for k in j+1 ..< n {
                    let pK = prices[k]
                    
                    if pI > pJ && pJ > pK && i < j && j < k {
                        count += 1
                    }
                }
            }
        }
        
        return count
    }
    
    func minArea(x: [Int], y: [Int], k: Int) -> Int {
        
        let x = [0, 2]
        let y = [0, 4]
        
        return 1
    }
    
    //subsequence and substrings
    //2/10, rest timeout
    func longestSubsequence() -> Int {
        
        let x = "hackerranks"
        let y = "hackers"
        
//        let x = "aabcd"
//        let y = "aabc"
        
        if x == y {
            return y.count
        }
        
        if x.range(of:y) != nil {
            return y.count
        }
        
        let xArr = Array(x).map { String($0) }
        let yArr = Array(y).map { String($0) }
        
        let xN = xArr.count
        let yN = yArr.count
        
        var setX:Set<String> = []
        setX.insert(x)
        //print(x)
        
        var setY:Set<String> = []
        
        var i = 0
        for k in 0 ..< xN - 1 {
            let curN = ((xN - 1) - k)
            let limit = curN - 1
            i = 0
            
            while i + limit < xN {
                
                for j in (i + limit) ..< xN {
                    let sub = xArr[i ..< (i + limit)].joined() + xArr[j]
                    
//                    if setX.contains(sub) {
//                        print(sub + "(dup)")
//                    } else {
//                        print(sub)
//                    }
                    
                    setX.insert(sub)
                }
                
                i += 1
            }
        }

        var reduce = 0
        for i in 0 ..< yN {
            for j in 0 ..< yN - reduce {
                let end = yN - j
                let sub = yArr[i ..< end].joined()
                setY.insert(sub)
                //print(sub)
            }
            reduce += 1
        }
        
        let res = setX.intersection(setY)
        let sorted = res.sorted(by: { $0.count < $1.count })
        if sorted.isEmpty {
            //print("no intersection, len: 0")
            return 0
        }
        
        let len = sorted.last!.count
        //print("longest element, len: \(len)")

        return len
    }
    
    /*
     YNNY
     NYNY
     NYNN
     
     output: 4
     */
    
    //2/9 4 wrongs, 3 timeout
    func groupSheepAndCows() -> Int {
        
        let grid = ["YNNY", "NYNY", "NYNN"]
        
        let row = grid.count
        var col = row
        
        if grid.count > 0 {
            let val = grid[0]
            col = val.count
        }
        
        var gridArr:[[Int]] = Array(repeating: Array(repeating: 0, count: col), count: row)
        
        var fields = 0
        for i in 0 ..< row {
            let gridStr = grid[i]
            let strArr = Array(gridStr).map { String($0) }
            
            for j in 0 ..< col {
                let val = strArr[j]
                if val == "Y" {
                    gridArr[i][j] = 1
                    fields += 1
                }
                
                if i > 0 && j > 0 {
                    
                    if gridArr[i][j] == 1 {
                    
                        //peek left
                        if gridArr[i][j-1] == 1 {
                            fields -= 1
                        }
                        
                        //peek right
                        if j+1 < col {
                            if gridArr[i][j+1] == 1 {
                                fields -= 1
                            }
                        }
                        
                        //peek top
                        if gridArr[i-1][j] == 1 {
                            fields -= 1
                        }
                        
                        //peek bottom
                        if i+1 < row {
                            if gridArr[i+1][j] == 1 {
                                fields -= 1
                            }
                        }
                    }
                }
            }
        }
        
        //debug
//        for i in 0 ..< row {
//            var rowStr = ""
//            for j in 0 ..< col {
//                rowStr += "\(gridArr[i][j])"
//            }
//            print(rowStr)
//        }
        
        let combinations = pow(2, fields-1)
        let result = Int(NSDecimalNumber(decimal: combinations))
        let res = result % 1000000007
        
        //res modulo 1000000007
        
        return res
    }
    
    func permuteLoopFindSearch(_ n:Int, _ s:[String], _ search:String) -> [String] {
        var c = [Int].init(repeating: 0, count: n)
        var A = s
        
        var res:Set<String> = []
        
        //print(A)
        res.insert(A.joined())
        
        var i = 0
        while i < n {
            if c[i] < i {
                if i % 2 == 0 {
                    A.swapAt(0, i)
                } else {
                    A.swapAt(c[i], i)
                }
                
                //print("i:\(i)")
                //print(A)
                res.insert(A.joined())
                
                c[i] += 1
                i = 0
            }
            else {
                c[i] = 0
                i += 1
            }
        }
        
        return Array(res)
    }
    
    func get_ranks(words: [String]) -> [Int] {
        
        var res:[Int] = []
        
        for w in words {
            let wArr = Array(w).map { String($0) }
            let wArrSorted = wArr.sorted()
            let wArrSortedJoined = wArrSorted.joined()
            if wArrSortedJoined == w {
                res.append(0)
                continue
            }
            
            let permuteArr = permuteLoopFindSearch(wArrSorted.count, wArrSorted, w)
            let permuteArrSorted = permuteArr.sorted()
            //print(permuteArrSorted)
            //print("")
            
            var rank = -1
            if let idx = permuteArrSorted.index(of: w) {
                rank = idx % 1000000007
            }
            res.append(rank)
        }
        
        return res
    }
    
    struct ValueIndex {
        var value = 0
        var index = 0
        
        init(_ v:Int, _ idx:Int) {
            value = v
            index = idx
        }
    }
    
    /*
      {3, 5}
      exp: 0 1
     
      {3, 3, 5}
      exp: 0 1
     
      {6, 3, 3}
      exp: 0 2
     */
    
    func max_two(arr: [Int]) -> [Int] {
        
        var res:[ValueIndex] = []
       
        //map all indexes
        for i in 0 ..< arr.count {
            let val = arr[i]
            let p = ValueIndex(val, i)
            res.append(p)
        }
        
       // let filteredSame =
        
        return []
    }
    
    //add1 , multiply 2
    func getMinOperations() -> [Int] {
        
        let kValues:[Int] = [4, 8]
        
        var res:[Int] = []
        for k in kValues {
            
            var count = 1//starts from 1
            var i = 1
            
            while i * 2 < k {
                i *= 2
                count += 1
            }
            
            while i + 1 < k {
                i += 1
                count += 1
            }
            
            res.append(count)
        }
        
        return res
    }
    
    func factorial(_ n:Int) -> Int {
        var res = 1
        for i in 1 ..< n+1 {
            res *= i
        }
        return res
    }
    
    //tbc
    func getRanks2() -> [Int] {
        
        let words = ["cba"]
        var ranks:[Int] = []
        
        for word in words {
            let wArr = Array(word.characters).map { String($0) }
            var wSorted = wArr.sorted(by: <)
            
            var rank = 0
            for w in wArr {
                if let idx = wSorted.index(of: w) {
                    rank += idx * factorial(wSorted.count - 1)
                    wSorted.remove(at: idx)
                }
            }
            
            ranks.append(rank)
        }
        
        return ranks
    }
    
    /*
     101101101 -> 3
     1111101 -> 1 --> cannot split further
     0000 -> -1
     */
    
    func powerOfFive() -> Int {
        
        //wrong solution !
        
        let s = "0000"
        var count = 0
        
        let splits1 = s.components(separatedBy: "101")
        count += (splits1.count-1)
        
        let splits2 = s.components(separatedBy: "1001")
        count += (splits2.count-1)
        
        let splits3 = s.components(separatedBy: "10001")
        count += (splits3.count-1)
        
        let splits4 = s.components(separatedBy: "100001")
        count += (splits4.count-1)
        
        let splits5 = s.components(separatedBy: "1000001")
        count += (splits5.count-1)
        
        if count == 0 {
            count = -1
        }
        
        return count
    }
    
    //4/12; 7 wrongs
    
    //TODO: check this !!
    func isPowerOf5(_ val:Int) -> Bool {
        if val == 0 {
            return false
        }
        let n = log2(Double(val)) / log2(Double(5))
        return Int(pow(5, n)) == val
    }
    
    func splitPowerOfFive() -> Int {
        
        let s = "1111110001111"
        //let s = "1111101"
        //let s = "101101101"
        
        if s == "1" {
            return 1
        }
        
        //check if s is a power of 5
        if let intVal = Int(s, radix: 2) {
            if(isPowerOf5(intVal)) {
                return 1
            }
        }
        
        //get array of power of 5
        var binVar = ""
        var exp = 1
        var pow5Arr:[String] = []
        
        while binVar.count < s.count {
            let powRes = pow(5, exp)
            let powResInt = Int(NSDecimalNumber(decimal: powRes))
            binVar = String(powResInt, radix: 2)
            pow5Arr.append(binVar)
            
            exp += 1
        }
        
        //let pow5ArrDesc = pow5Arr.sorted(by: >)//descending (wrong sort !)
        
        var sVar = s
        var count = 0
        var pIdx = 0
        
        while sVar.count > 0 {
            
            //loop from behind
            let revIdx = (pow5Arr.count - 1) - pIdx
            let p = pow5Arr[revIdx]
            
            if let range = sVar.range(of: p) {
                sVar.removeSubrange(range)
                count += 1
                
                if sVar.count == 0 {
                    break
                }
            } else {
                pIdx += 1
                
                if pIdx >= pow5Arr.count {
                    break
                }
            }
        }
        
        if count == 0 {
            count = -1
        }
        
        return count
    }
    
    //10/12
    func customSortedArray(a: [Int]) -> Int {
        
        var a = a
        
        var half:Int = (a.count / 2)
        if a.count % 2 == 1 {
            half = half + 1
        }
        
        var move = 0
        for i in 0 ..< a.count - 1 {
            
            if i >= half {
                break
            }
            
            if a[i] % 2 == 1 {
                var j = half
                var isFound = true
                while a[j] % 2 == 1 {
                    j += 1
                    
                    if j >= a.count {
                        isFound = false
                        break
                    }
                }
                
                if isFound {
                    //swap(&a[i], &a[j])
                    a.swapAt(i, j)
                    move += 1
                }
            }
        }
        
        return move
    }
    
    func customSortedArray2() -> Int {
        
        //even numbers at front, odd at back
        
        //var a = [13, 10, 21, 20] //1 move
        var a = [8, 5, 11, 4, 6] // 2 moves
        
        var half:Int = (a.count / 2)
        if a.count % 2 == 1 {
            half = half + 1
        }
        
        var move = 0
        for i in 0 ..< a.count - 1 {
            
            if i >= half {
                break
            }
            
            if a[i] % 2 == 1 {
                var j = half
                var isFound = true
                while a[j] % 2 == 1 {
                    j += 1
                    
                    if j >= a.count {
                        isFound = false
                        break
                    }
                }
                
                if isFound {
                    //swap(&a[i], &a[j])
                    a.swapAt(i, j)
                    move += 1
                }
            }
        }
        
        return move
    }
    
    func ascendingBinarySorting1() -> [Int] {
        
        //let elements = [1, 2, 3]
        let elements = [5, 3, 7, 10, 14] //--> [3, 5, 10, 7, 14]
        
        let sorted = elements.sorted(by: {
            
            let bin1 = String($0, radix: 2)
            let bin2 = String($1, radix: 2)
            
            let bin1Arr = Array(bin1).map { String($0) }
            let bin2Arr = Array(bin2).map { String($0) }
            
            let count1 = bin1Arr.filter({ $0 == "1" }).count
            let count2 = bin2Arr.filter({ $0 == "1" }).count
            
            if count1 == count2 {
                return $0 < $1
            }
            
            return count1 < count2
        })
        
        return sorted
    }
    
    //10/14
    func ascendingBinarySorting2() -> [Int] {
        
        //let elements = [1, 2, 3]
        let elements = [5, 3, 7, 10, 14] //--> [3, 5, 10, 7, 14]
        
        let sorted = elements.sorted(by: {
            
            let bin1 = String($0, radix: 2)
            let bin2 = String($1, radix: 2)
            
            let bin1Arr = Array(bin1)
            let bin2Arr = Array(bin2)
            
            let count1 = bin1Arr.filter({ $0 == "1" }).count
            let count2 = bin2Arr.filter({ $0 == "1" }).count
            
            if count1 == count2 {
                return $0 < $1
            }
            
            return count1 < count2
        })
        
        return sorted
    }
    
    /*
     input 0:
     1
     1
     2
     2
     3
     3
     k: 1
     
     output 0:
     2
     (1, 2)
     (2, 3)
     
     input 1:
     1
     2
     3
     4
     5
     6
     k: 2
     
     output 1:
     4
     (1, 3)
     (2, 4)
     (3, 5)
     (4, 6)
     
     input 2:
     1
     2
     5
     6
     9
     10
     k: 2
     
     output 2:
     0
     
     */
    //3/12
    func countingPairs() -> Int {
        
        let numbers:[Int] = []
        let k = 0
        
        var occ:[String:Bool] = [:]
        var count = 0
        for i in 0 ..< numbers.count - 1 {
            for j in i+1 ..< numbers.count {
                
                let numI = numbers[i]
                let numJ = numbers[j]
                
                if numI + k == numJ {
                    if occ["\(numI)\(numJ)"] == nil && occ["\(numJ)\(numI)"] == nil {
                        count += 1
                        occ["\(numI)\(numJ)"] = true
                        occ["\(numJ)\(numI)"] = true
                    }
                }
            }
        }
        
        return count
    }
    
    //                                                              GO ALL PASSED SECTION !!!
    
    //====================================================================================================================================================================//
    
    //all passed !!!! (createBST())
    var bstCounter = 0
    
    class BSTNode {
        var key = 0
        var left:BSTNode? = nil
        var right:BSTNode? = nil
        
        init(_ k:Int) {
            key = k
        }
    }
    
    func insert(_ node:BSTNode, _ key:Int) {
        
        bstCounter += 1
        
        if key < node.key {
            if node.left == nil {
                let n = BSTNode(key)
                node.left = n
            } else {
                insert(node.left!, key)
            }
        }
        else {
            if node.right == nil {
                let n = BSTNode(key)
                node.right = n
            } else {
                insert(node.right!, key)
            }
        }
    }
    
    
    func createBST() {
        
        let keys:[Int] = [1, 2, 3]
        
        bstCounter = 0
        var rootBST:BSTNode? = nil
        
        for k in keys {
            if rootBST != nil {
                insert(rootBST!, k)
            } else {
                rootBST = BSTNode(k)
            }
            
            print(bstCounter)
        }
    }
    
    //all passed !
    func getSequenceSum(_ i: Int, _ j: Int, _ k: Int) -> Int {
        
        //sum 1st part
        let sumJ = ((j * (j + 1)) / 2)
        let sumI = ((i-1) * ((i-1) + 1)) / 2
        let sumPos = sumJ - sumI
        
        //debug
        print("(\(i), \(j), \(k)):")
        
        //sum 2nd part
        var toAdd = 0
        if 0 < j && 0 > k {
            //j+k
            let j0 = j - 1
            let sumJ0 = ((j0 * (j0 + 1)) / 2)
            
            let k0 = abs(k)
            let sumK0 = ((k0 * (k0 + 1)) / 2) * -1
            
            toAdd = sumJ0 + sumK0
        } else if j > 0 && k > 0 {
            //j - k
            let j0 = j - 1
            let sumJ0 = ((j0 * (j0 + 1)) / 2)
            
            let k0 = k - 1
            let sumK0 = ((k0 * (k0 + 1)) / 2)
            
            toAdd = sumJ0 - sumK0
        } else if j < 0 && k < 0 {
            //k - j
            let j0 = abs(j)
            let sumJ0 = ((j0 * (j0 + 1)) / 2) * -1
            
            let k0 = abs(k)
            let sumK0 = ((k0 * (k0 + 1)) / 2) * -1
            
            toAdd = sumK0 - sumJ0
        }
        
        let res = sumPos + toAdd
        
        //debug
        print(res)
        
        return res
    }
    
    //all passed ! (yay !~~)
    func closestNumbers2(numbers: [Int]) -> Void {
 
        let n = numbers.count
        let sorted = numbers.sorted(by: < )
        var min = Int.max
        
        for i in 0 ..< n - 1 {
            let diff = abs(sorted[i+1] - sorted[i])
            if diff < min {
                min = diff
            }
        }
        
        for i in 0 ..< n - 1 {
            let diff = abs(sorted[i+1] - sorted[i])
            if diff == min {
                print("\(sorted[i]) \(sorted[i+1])")
            }
        }
    }
    
    //to be confirmed ! - all passed ! (great !)
    func numComplement(_ n:Int) -> Int {
        let binStr = String(n, radix: 2)
        let divStr = [String].init(repeating: "1", count: binStr.count).joined()
        
        var res = 0
        if let divNum = Int(divStr, radix: 2) {
            res = n ^ divNum
        }
        
        //debug:
        let binResStr = String(res, radix: 2)
        print("res num: \(res), res bin: \(binResStr)")
        
        return res
    }
    
    //all pased !
    //jump to the flag
    func jumps() -> Int {
        
        //k = height of flag
        //j = unit of jump
        
        let k = 3
        let j = 3
        
        var i = 0
        var count = 0
        
        while i < k {
            if i + j <= k {
                i += j
                count += 1
            } else {
                i += 1
                count += 1
            }
        }
        
        return count
    }
    
    //all passed ! (yewww !!)
    func twins4(_ a: [String], _ b: [String]) -> [String] {
        
        var res:[String] = []
        
        for i in 0 ..< a.count {
            let sA = a[i]
            let sB = b[i]
            
            if sA.count != sB.count {
                res.append("No")
            } else {
                if sA == sB {
                    res.append("Yes")
                } else {
                    
                    //var i = 0
                    //var j = 0
                    
                    var charsA = Array(sA).map(String.init)
                    let charsB = Array(sB).map(String.init)
                    
                    let n = charsA.count
                    
                    var isFound = false
                    for i in 0 ..< n {
                        //var cA = charsA[i]
                        //let cB = charsB[i]
                        
                        var j = i + 2
                        while j < n {
                            if charsA[j] == charsB[i] {
                                charsA.swapAt(i, j)
                                break
                            }
                            j += 2
                        }
                        
                        if charsA == charsB {
                            isFound = true
                            break
                        }
                    }
                    
                    if isFound {
                        res.append("Yes")
                    } else {
                        res.append("No")
                    }
                }
            }
        }
        
        print(res)
        
        return res
    }
    
    //all passed !!!
    func alphabetCyclicIncrement(_ l:[Int], _ s:[String]) {
        
        let alphaStr = "abcdefghijklmnopqrstuvwxyz"
        let alphaArr = Array(alphaStr).map(String.init)
        var alphaHash:[String:Int] = [:]
        
        for i in 0 ..< alphaArr.count {
            let alpha = alphaArr[i]
            alphaHash[alpha] = i
        }
        
        // Enter your code here
        //let n = Int(readLine(strippingNewline: true)!)!
        let n = 4
        
        for i in 0 ..< n {
            //let len = Int(readLine(strippingNewline: true)!)!
            //let string = readLine(strippingNewline: true)!
            
            //let len = l[i]
            let string = s[i]
            
            var chars = Array(string).map(String.init)
            var hash:[String:Int] = [:]
            
            for i in 0 ..< chars.count {
                let c = chars[i]
                if hash[c] == nil {
                    hash[c] = 0
                } else {
                    let newCount = hash[c]! + 1
                    hash[c] = newCount
                    
                    let alphaIdx = alphaHash[c]!
                    let nextIdx = (alphaIdx + newCount) % alphaArr.count
                    let nextVal = alphaArr[nextIdx]
                    chars[i] = nextVal
                }
            }
            print(chars.joined())
        }
        
        print("")
    }
    
    //all passed !!! (Last Substring)
    //timeout on (Substring calculator)
    func countSubstring3() -> Int {
        let s = "ghaqjdrmnegmrlrlfpjmnnngpwalzknsencuzwsnhfltwohdgbmvfuwtquosrnyerucntxxkfqehjqygcarxogvcfkljzbzutxphpyykapncjfclnhndzxghelyvzpylazhuutmcquusexzbhsfsmbnlvnlemzvfqbfzwquairhpylnbvyhiyamztlhfchhbwrqddmuzsprfdwuqqchcpeakkexackwwzihkfenwzwckynymgqydvjtovaoezkjjurylqcuonsujycziobnfnmuwnoxcdtahpituykvgpyyshvukrstcbmnsqtjseflwywnslmvnqrtnzkyaddkjamrezprqgoenzsdryygbkeahfiduozpwkrgmatszaxmwodsqiocvagbvxyqotpaujnqvqgjmfxnxhfbwqjpgodlxdrxpjpmzeabpgqrzpxomniknjkdiwtfgyvwvekrnoupwkcbtmpcfamzrghgrznuedkybmfwctdghcfawajlxfkzhdamuygjbcwnyglkjlfmpxfdtovkqbshhrfrnyjrgxgiozsuuncnwofkqzsypwgeikpfbhryhpszegdfajzvqlwwqlnvdtdiuckcvvosrdweohnmawqonjbxyjjhlccuteeshfrxxdhzgakwjqbymnaeudcmibsytyajsgdpfvrutcpglzxdevenevmkgalcrpknuvcrnkuboennhyzirfwvtozzijujsckbxqpocakzrbwgpqgjjmsrtwmvhwyraukbuxfvebeylfpipzwjdzlmgslbtwzataxgqpasrssnfwndldwkdutdqcmcpyanrbdsxrvcvpsywjambtbzlcrvzesuhvyvwwuwwdznigxjxknfajpknqutfvvqynkpvkzgypasevrpxofbymdzcitoqolwqegocuyqsexhumzmckzuuwkamolbltlifongpvkcnrnnuplftqbxpdnegdqlymftqyrxcnzmu"
        var res:[String] = []
        let chars = Array(s).map { String($0) }
        let n = s.count
        var hash:[String:Bool] = [:]
        
        var reduce = 0
        var x = 1
        for i in 0 ..< n {
            for j in 0 ..< n - reduce {
                let end = n - j
                let sub = chars[i ..< end].joined()
                if hash[sub] == nil {
                    hash[sub] = true
                    //print("\(x): \(sub)")
                    res.append(sub)
                    x += 1
                }
            }
            
            reduce += 1
        }
        
        print("res count (sub3): \(res.count)")
        
        return res.count
    }
    
    //all passed
    func lastSubString(s: String) -> String {
        
        var res:[String] = []
        let chars = Array(s).map { String($0) }
        let n = s.count
        var hash:[String:Bool] = [:]
        
        var reduce = 0
        var x = 1
        for i in 0 ..< n {
            for j in 0 ..< n - reduce {
                let end = n - j
                let sub = chars[i ..< end].joined()
                if hash[sub] == nil {
                    hash[sub] = true
                    //print("\(x): \(sub)")
                    res.append(sub)
                    x += 1
                }
            }
            
            reduce += 1
        }
        
        let sorted = res.sorted()
        
        return sorted.last!
    }
    
    //all passed !!
    //Distinct pairs
    func numberOfPairs(a: [Int], k: Int) -> Int {
        /*
         * Write your code here.
         */
        var h:[Int:Int] = [:]
        var occ:[String:Bool] = [:]
        
        var count = 0
        for x in a {
            if let p = h[k - x] {
                if occ["\(x)\(k-x)"] == nil {
                    if p == x {
                        count += 1
                        occ["\(x)\(k-x)"] = true
                        occ["\(k-x)\(x)"] = true
                    }
                }
            }
            else {
                h[x] = k - x
            }
        }
        
        return count
    }
    
    //all passed ! (just need to be sorted.. wah lao ee....)
    func countingPairs2() -> Int {
        let numbers:[Int] = [1, 1, 2, 2, 3, 3, 1]
        let k = 1
        
        //x + b = k
        //b = k - x
        
        //a + k = b
        
        let sorted = numbers.sorted()
        
        var h:[Int:Int] = [:]
        var occ:[String:Bool] = [:]
        
        var count = 0
        for x in sorted {
            h[x] = x + k
            if let p = h[x - k] {
                if occ["\(x)\(x - k)"] == nil {
                    if p == x {
                        count += 1
                        occ["\(x)\(x - k)"] = true
                        occ["\(x - k)\(x)"] = true
                    }
                }
            }
        }
        
        return count
    }
    
    //all passed !!!! (whooo ~~ !)
    func solutionEncodedString4(_ s:String) -> [Int] {
        
        var i = 0
        let characters = Array(s.characters)
        let n = characters.count
        var res = [Int].init(repeating: 0, count: 26)
        var prevVal = 0
        var isBracketMode = false
        var bracketStr = ""
        
        while i < n {
            
            let c = String(characters[i])
            
            //peek
            if i + 2 < n && characters[i+2] == "#" {
                //double digit
                let valStr = c + String(characters[i+1])
                if let val = Int(valStr) {
                    prevVal = val
                    res[val-1] += 1
                    i += 3
                    continue
                }
            } else {
                //single digit
                if !isBracketMode && c != "(" && c != ")" {
                    let valStr = c
                    if let val = Int(valStr) {
                        prevVal = val
                        res[val-1] += 1
                    }
                }
            }
            
            //freq
            if c == ")" {
                if let bracketVal = Int(bracketStr) {
                    res[prevVal-1] += bracketVal - 1
                }
                isBracketMode = false
                bracketStr = ""
            }
            
            if isBracketMode {
                bracketStr += c
            }
            
            if c == "(" {
                isBracketMode = true
            }
            
            i += 1
        }
        
        return res
    }
    
    //all passed !!! (yooo ~~ !!)
    func missingWords5(s: String, t: String) -> [String] {
        var sArr = s.split{$0 == " "}.map(String.init)
        var res:[String] = []
        
        if t.isEmpty {
            res = sArr
        } else {
            let tArr = t.split{$0 == " "}.map(String.init)
            
            let nS = sArr.count
            let nT = tArr.count
            
            var j = 0
            for i in 0 ..< nS {
                
                if sArr[i] != tArr[j] {
                    res.append(sArr[i])
                } else {
                    if j+1 < nT {
                        j += 1
                    }
                }
            }
        }
        
        return res
    }
    
    //all passed !!
    func cardinalitySort(nums: [Int]) -> [Int] {
        var hash:[Int:Int] = [:]
        let res = nums
        
        for n in nums {
            let binStr = String(n, radix: 2)
            let arrBinStr = Array(binStr)
            let sum = arrBinStr.filter({ $0 == "1" }).count
            hash[n] = sum
        }
        
        let sorted = res.sorted(by: {
            
            let hash0 = hash[$0]!
            let hash1 = hash[$1]!
            
            if hash0 == hash1 {
                return $0 < $1
            }
            
            return hash0 < hash1
        })
        
        //print(sorted)
        
        return sorted
    }
    
    //last 3 timeout...
    func rearrange(elements: [Int]) -> [Int] {
        
        var hash:[Int:Int] = [:]
        let res = elements
        
        for e in elements {
            let binStr = String(e, radix: 2)
            let binStrArr = Array(binStr).map { String($0) }
            let countOnes = binStrArr.filter { $0 == "1" }.count
            hash[e] = countOnes
            //print("e: \(e), bin: \(binStr), count: \(countOnes), hash[\(e)]: \(hash[e]!)")
        }
        
        let sorted = res.sorted(by: {
            
            if hash[$0]! == hash[$1]! {
                //print("$0: \($0), $1: \($1)")
                return $0 < $1
            }
            
            return hash[$0]! < hash[$1]!
        })
        
        return sorted
    }
    
    //all passed !!
    
    func mergeStrings(a: String, b: String) -> String {
        let lenA = a.count
        let lenB = b.count
        
        let firstStr = a
        let secondStr = b
        
        let charsFirst = Array(firstStr).map { String($0) }
        let charsSecond = Array(secondStr).map { String($0) }
        
        var until = lenA
        
        if lenB < lenA {
            until = lenB
        }
        
        
        var res = ""
        for i in 0 ..< until {
            let strFirst = charsFirst[i]
            let strSecond = charsSecond[i]
            res += "\(strFirst)\(strSecond)"
        }
        
        if secondStr.count > firstStr.count {
            let remaining = charsSecond[firstStr.count ..< secondStr.count].joined()
            res += remaining
        } else if firstStr.count > secondStr.count {
            let remaining = charsFirst[secondStr.count ..< firstStr.count].joined()
            res += remaining
        }
        
        return res
    }
    
    //all passed !!!
    func braces(values: [String]) -> [String] {
        
        var res:[String] = []
        
        for v in values {
            
            var stack:[String] = []
            let n = v.count
            if n % 2 == 1 {
                res.append("NO")
            } else {
                let chars = Array(v).map { String($0) }
                for c in chars {
                    if c == "(" {
                        stack.append(")")
                    } else if c == "[" {
                        stack.append("]")
                    } else if c == "{" {
                        stack.append("}")
                    } else {
                        let top = stack.last
                        if top == c {
                            stack.removeLast()
                        }
                    }
                }
                
                if stack.isEmpty {
                    res.append("YES")
                } else {
                    res.append("NO")
                }
            }
        }
        
        return res
    }
    
    //============================

    // Performance
    func evaluateProblem()
    {
        let start = DispatchTime.now() // <<<<<<<<<< Start time
        //permuteRec(10, ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"])
        ascendingBinarySorting1()
        let end = DispatchTime.now()   // <<<<<<<<<<   end time
        
        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
        let timeInterval = Double(nanoTime) / 1_000_000_000 // Technically could overflow for long running tests
        
        print("Time to evaluate problem (1): \(timeInterval) seconds")
    }
    
    func evaluateProblem2()
    {
        let start = DispatchTime.now() // <<<<<<<<<< Start time
        //permuteLoop(10, ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"])
        ascendingBinarySorting2()
        let end = DispatchTime.now()   // <<<<<<<<<<   end time
        
        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
        let timeInterval = Double(nanoTime) / 1_000_000_000 // Technically could overflow for long running tests
        
        print("Time to evaluate problem (2): \(timeInterval) seconds")
    }
    
    func evaluateProblem3()
    {
        let start = DispatchTime.now() // <<<<<<<<<< Start time
        //permuteLoop(10, ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"])
        let end = DispatchTime.now()   // <<<<<<<<<<   end time
        
        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
        let timeInterval = Double(nanoTime) / 1_000_000_000 // Technically could overflow for long running tests
        
        print("Time to evaluate problem (3): \(timeInterval) seconds")
    }
}
