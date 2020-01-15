public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public int findFirstVowel(String sWord)
{
	int[] letters = {'a','e','i','o','u'};
 	for(int i = 0; i < sWord.length(); i++){
		for(int g = 0; g < letters.length; g++){
    		if(sWord.charAt(i) == letters[g])
    			return i;
    	}
	}
	return -1;
}

public String pigLatin(String sWord)
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else
	{
		if(sWord.charAt(0) == ('q')){
			return sWord.substring(2) + "quay";
		}
		if(findFirstVowel(sWord) == 0){
			return sWord + "way";
		} else {
			return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
		}
	}
}