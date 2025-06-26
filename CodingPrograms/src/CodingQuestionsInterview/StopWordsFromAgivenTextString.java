package CodingQuestionsInterview;

import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

import collection.arraylist;

public class StopWordsFromAgivenTextString {

    public static void main(String[] args) {
        String text = "a mouse is smaller than a dog but a a dog is stronger i am s s";
        int k = 2;

        List<String> stopWords = stopWords(text, k);
        System.out.println(stopWords); // Output: [a, is, dog]
    }

    private static List<String> stopWords(String text, int k) {
      String[] wordlist=text.split(" ");

         Map<String,Integer> freqMap=new LinkedHashMap<>();

         for (String word : wordlist) {
            
            if(!freqMap.containsKey(word))
            {
                freqMap.put(word, 1);
            }else{
                   freqMap.put(word, freqMap.getOrDefault(word, 1)+1);
            }

         }

        //  System.out.println(freqMap);
       return  freqMap.entrySet().stream().filter(x-> x.getValue()>=k)
       .map(x-> x.getKey())
       .collect(Collectors.toList());

    



        //  return Arrays.stream(text.split(" "))
        // .collect(Collectors.groupingBy(
        //     Function.identity(),
        //     LinkedHashMap::new,
        //     Collectors.counting()
        // ))
        // .entrySet().stream()
        // .filter(e -> e.getValue() >= k)
        // .map(Map.Entry::getKey)
        // .collect(Collectors.toList());
       

    }






}
