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
        //additionIncrement()
        
        //evaluateProblem()
        //evaluateProblem2()
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
         abbc
         abbdd
         ****
         abbc
         ddbba
         */
        
        //twins2(["abbc", "abbdd"], ["abbc", "ddbba"])
        getMin(s: "00000")
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
    
    func canReach(x1: Int, y1: Int, x2: Int, y2: Int) -> String {
        //var x = x1
        //var y = x1
        
        return move(x1, y1, x2, y2) ? "Yes" : "No"
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
                res.append(middle!)
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
    
    func countSubstring3() {
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
     func readComp() {
     
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
     }
     }
     */
    
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
    
    //4/11
    func checkDivisibility(arr: [String]) -> [String] {
        
        var res:[String] = []
        
        for s in arr {
            
            if let intVal = Int(s) {
                if intVal % 8 == 0 {
                    res.append("YES")
                } else {
                    let sArr = Array(s).map { String($0) }
                    let n = sArr.count
                    let isFound = permuteLoopDiv8(n, sArr)
                    
                    if isFound {
                        res.append("YES")
                    } else {
                        res.append("NO")
                    }
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
        let row = a.count
        
        for x in 0 ..< row {
            for y in 0 ..< row {
                var s = 0
                for i in 0 ..< x + 1 {
                    for j in 0 ..< y + 1 {
                        s += a[i][j]
                    }
                }
                res[x][y] = s
            }
        }
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
    
    class Node {
        var val = ""
        var left:Node? = nil
        var right:Node? = nil
        
        init(_ v:String, _ l:Node?, _ r:Node?) {
            val = v
            left = l
            right = r
        }
    }
    
    func SExpression(nodes: String) -> String {
        
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
    
    //== Passed section !!
    
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
        permuteRec(10, ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"])
        let end = DispatchTime.now()   // <<<<<<<<<<   end time
        
        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
        let timeInterval = Double(nanoTime) / 1_000_000_000 // Technically could overflow for long running tests
        
        print("Time to evaluate problem (1): \(timeInterval) seconds")
    }
    
    func evaluateProblem2()
    {
        let start = DispatchTime.now() // <<<<<<<<<< Start time
        permuteLoop(10, ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"])
        let end = DispatchTime.now()   // <<<<<<<<<<   end time
        
        let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
        let timeInterval = Double(nanoTime) / 1_000_000_000 // Technically could overflow for long running tests
        
        print("Time to evaluate problem (2): \(timeInterval) seconds")
    }
}
