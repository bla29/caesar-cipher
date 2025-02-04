ALPHABET  = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

#take a string and turn it into lower case
#take each letter beginning at start of the string
#shift this letter shiftNumber amount of times to the right
#if shiftnumber of times for the current position of the letter is greater than z, 
#then take the remainder and start from a
#do this until you reach the end of the input string
def caesar_cipher(string, shiftNumber)
  lowerCase = string.downcase
  arrayString = lowerCase.split("")
  lengthAlphabet = ALPHABET.length
  newArray = arrayString.each_with_index do |character, index|
    if ALPHABET.include?(character)
      startPosition = ALPHABET.find_index(character)
      if (startPosition + shiftNumber) > lengthAlphabet
        newstartPosition = (startPosition + shiftNumber) - lengthAlphabet
        arrayString[index] = ALPHABET[newstartPosition]
      else
        arrayString[index] = ALPHABET[startPosition + shiftNumber]
      end
    end
  end
  arrayString = arrayString.join("")
  puts arrayString
end

caesar_cipher("hquy,!djsakda`31232", 5)