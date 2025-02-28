def count_vowels(word):
    vowels = "aeiouAEIOU"
    count = 0
    for i in range(len(word)):
        if word[i] in vowels:
            count = count +1

    return count

if __name__ == "__main__":   
    word="Datasciencebootcamp"
    print(count_vowels(word))
