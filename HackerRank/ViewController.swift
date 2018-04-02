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
        
        //solutionNumberComplement(5)
        //solutionEncodedString4("1(2)23(3)")
        //solutionEncodedString4("23#(2)24#25#26#23#(3)")
        
        //solutionSubstrings("abcde")
        
        //twinString()
        additionIncrement()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

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
        let val = n ^ 0b111
        print("Binary:", String(val, radix: 2))
        print("")
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
    
    
    //all passed !!!! (whooo ~~ !)
    func solutionEncodedString4(_ s:String) {
    
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
        
        for i in 0 ..< n {
            for j in i+1 ..< n + 1 {
                let startIdx = s.index(s.startIndex, offsetBy: i)
                let endIdx = s.index(s.startIndex, offsetBy: j)
                
                let sub = String(s[startIdx ..< endIdx])!
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
    
    //21/100 ??
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
    
    //all passed !!
    /*
    func mergeStrings(a: String, b: String) -> String {
        let lenA = a.count
        let lenB = b.count
        
        var firstStr = a
        var secondStr = b
        
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
 */
    
    //last 3 timeout...
    func rearrange(elements: [Int]) -> [Int] {
        
        var hash:[Int:Int] = [:]
        var res = elements
        
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
    
    func canReach(x1: Int, y1: Int, x2: Int, y2: Int) -> String {
        //var x = x1
        //var y = x1
        
        return move(x1, y1, x2, y2) ? "Yes" : "No"
    }
}

