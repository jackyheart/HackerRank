package com.example.pixerf_sg_ws_12.hackerrank;

import java.util.HashMap;
import java.util.Map;

public class Solution {

    static long substringCalculator() {

        //String s = "kincenvizh";
        String s = "ghaqjdrmnegmrlrlfpjmnnngpwalzknsencuzwsnhfltwohdgbmvfuwtquosrnyerucntxxkfqehjqygcarxogvcfkljzbzutxphpyykapncjfclnhndzxghelyvzpylazhuutmcquusexzbhsfsmbnlvnlemzvfqbfzwquairhpylnbvyhiyamztlhfchhbwrqddmuzsprfdwuqqchcpeakkexackwwzihkfenwzwckynymgqydvjtovaoezkjjurylqcuonsujycziobnfnmuwnoxcdtahpituykvgpyyshvukrstcbmnsqtjseflwywnslmvnqrtnzkyaddkjamrezprqgoenzsdryygbkeahfiduozpwkrgmatszaxmwodsqiocvagbvxyqotpaujnqvqgjmfxnxhfbwqjpgodlxdrxpjpmzeabpgqrzpxomniknjkdiwtfgyvwvekrnoupwkcbtmpcfamzrghgrznuedkybmfwctdghcfawajlxfkzhdamuygjbcwnyglkjlfmpxfdtovkqbshhrfrnyjrgxgiozsuuncnwofkqzsypwgeikpfbhryhpszegdfajzvqlwwqlnvdtdiuckcvvosrdweohnmawqonjbxyjjhlccuteeshfrxxdhzgakwjqbymnaeudcmibsytyajsgdpfvrutcpglzxdevenevmkgalcrpknuvcrnkuboennhyzirfwvtozzijujsckbxqpocakzrbwgpqgjjmsrtwmvhwyraukbuxfvebeylfpipzwjdzlmgslbtwzataxgqpasrssnfwndldwkdutdqcmcpyanrbdsxrvcvpsywjambtbzlcrvzesuhvyvwwuwwdznigxjxknfajpknqutfvvqynkpvkzgypasevrpxofbymdzcitoqolwqegocuyqsexhumzmckzuuwkamolbltlifongpvkcnrnnuplftqbxpdnegdqlymftqyrxcnzmu";

        long count = 0;
        Map<String, Integer> substrings = new HashMap<>();
        final char[] chars = s.toCharArray();

        for(int i = 0; i < chars.length; i++)
        {
            char[] subChars = new char[chars.length - i];
            s.getChars(i, chars.length, subChars, 0);

            int subLen = subChars.length;
            for(int j = 0; j < subChars.length; j++)
            {
                String subDistinct = new String(subChars, 0, subLen - j);

                if(!substrings.containsKey(subDistinct))
                {
                    substrings.put(subDistinct, 1);
                    count += 1;
                }
            }
        }

        return count;
    }

    static void measureSubStringCalculator() {
        long startTime = System.nanoTime();
        substringCalculator();
        long endTime   = System.nanoTime();
        long totalTime = endTime - startTime;
        System.out.println("Measure 1:" + totalTime);
    }

    //=====

    static long substringCalculator2() {

        //String s = "kincenvizh";
        String s = "ghaqjdrmnegmrlrlfpjmnnngpwalzknsencuzwsnhfltwohdgbmvfuwtquosrnyerucntxxkfqehjqygcarxogvcfkljzbzutxphpyykapncjfclnhndzxghelyvzpylazhuutmcquusexzbhsfsmbnlvnlemzvfqbfzwquairhpylnbvyhiyamztlhfchhbwrqddmuzsprfdwuqqchcpeakkexackwwzihkfenwzwckynymgqydvjtovaoezkjjurylqcuonsujycziobnfnmuwnoxcdtahpituykvgpyyshvukrstcbmnsqtjseflwywnslmvnqrtnzkyaddkjamrezprqgoenzsdryygbkeahfiduozpwkrgmatszaxmwodsqiocvagbvxyqotpaujnqvqgjmfxnxhfbwqjpgodlxdrxpjpmzeabpgqrzpxomniknjkdiwtfgyvwvekrnoupwkcbtmpcfamzrghgrznuedkybmfwctdghcfawajlxfkzhdamuygjbcwnyglkjlfmpxfdtovkqbshhrfrnyjrgxgiozsuuncnwofkqzsypwgeikpfbhryhpszegdfajzvqlwwqlnvdtdiuckcvvosrdweohnmawqonjbxyjjhlccuteeshfrxxdhzgakwjqbymnaeudcmibsytyajsgdpfvrutcpglzxdevenevmkgalcrpknuvcrnkuboennhyzirfwvtozzijujsckbxqpocakzrbwgpqgjjmsrtwmvhwyraukbuxfvebeylfpipzwjdzlmgslbtwzataxgqpasrssnfwndldwkdutdqcmcpyanrbdsxrvcvpsywjambtbzlcrvzesuhvyvwwuwwdznigxjxknfajpknqutfvvqynkpvkzgypasevrpxofbymdzcitoqolwqegocuyqsexhumzmckzuuwkamolbltlifongpvkcnrnnuplftqbxpdnegdqlymftqyrxcnzmu";

        Map<String, Integer> substrings = new HashMap<String, Integer>();
        long count = 0;

        for(int i = 0; i < s.length(); i++)
        {
            String sub = s.substring(i);

            for(int j = 0; j < sub.length(); j++)
            {
                String subDistinct = sub.substring(0, sub.length() - j);

                if(!substrings.containsKey(subDistinct))
                {
                    substrings.put(subDistinct, 1);
                    count += 1;
                }
            }
        }

        return count;
    }

    static void measureSubStringCalculator2() {
        long startTime = System.nanoTime();
        substringCalculator2();
        long endTime   = System.nanoTime();
        long totalTime = endTime - startTime;
        System.out.println("Measure 2:" + totalTime);
    }

    //=====

    static long substringCalculator3() {

        //String s = "kincenvizh";
        String s = "ghaqjdrmnegmrlrlfpjmnnngpwalzknsencuzwsnhfltwohdgbmvfuwtquosrnyerucntxxkfqehjqygcarxogvcfkljzbzutxphpyykapncjfclnhndzxghelyvzpylazhuutmcquusexzbhsfsmbnlvnlemzvfqbfzwquairhpylnbvyhiyamztlhfchhbwrqddmuzsprfdwuqqchcpeakkexackwwzihkfenwzwckynymgqydvjtovaoezkjjurylqcuonsujycziobnfnmuwnoxcdtahpituykvgpyyshvukrstcbmnsqtjseflwywnslmvnqrtnzkyaddkjamrezprqgoenzsdryygbkeahfiduozpwkrgmatszaxmwodsqiocvagbvxyqotpaujnqvqgjmfxnxhfbwqjpgodlxdrxpjpmzeabpgqrzpxomniknjkdiwtfgyvwvekrnoupwkcbtmpcfamzrghgrznuedkybmfwctdghcfawajlxfkzhdamuygjbcwnyglkjlfmpxfdtovkqbshhrfrnyjrgxgiozsuuncnwofkqzsypwgeikpfbhryhpszegdfajzvqlwwqlnvdtdiuckcvvosrdweohnmawqonjbxyjjhlccuteeshfrxxdhzgakwjqbymnaeudcmibsytyajsgdpfvrutcpglzxdevenevmkgalcrpknuvcrnkuboennhyzirfwvtozzijujsckbxqpocakzrbwgpqgjjmsrtwmvhwyraukbuxfvebeylfpipzwjdzlmgslbtwzataxgqpasrssnfwndldwkdutdqcmcpyanrbdsxrvcvpsywjambtbzlcrvzesuhvyvwwuwwdznigxjxknfajpknqutfvvqynkpvkzgypasevrpxofbymdzcitoqolwqegocuyqsexhumzmckzuuwkamolbltlifongpvkcnrnnuplftqbxpdnegdqlymftqyrxcnzmu";

        Map<String, Integer> substrings = new HashMap<String, Integer>();
        long count = 0;

        for(int i = 0; i < s.length(); i++)
        {
            String sub = new String(s.substring(i));

            for(int j = 0; j < sub.length(); j++)
            {
                String subDistinct = new String(sub.substring(0, sub.length() - j));

                if(!substrings.containsKey(subDistinct))
                {
                    substrings.put(subDistinct, 1);
                    count += 1;
                }
            }
        }

        return count;
    }

    static void measureSubStringCalculator3() {
        long startTime = System.nanoTime();
        substringCalculator3();
        long endTime   = System.nanoTime();
        long totalTime = endTime - startTime;
        System.out.println("Measure 3:" + totalTime);
    }

    //=====

    public static void main(String[] args) {
        measureSubStringCalculator();
        measureSubStringCalculator2();
        measureSubStringCalculator3();
    }
}
