if __name__ == "__main__":

    string = """ I have provided this text to provide tips on creating interesting paragraphs.
                First, start with a clear topic sentence that introduces the main idea.
                Then, support the topic sentence with specific details, examples, and evidence.
                Vary the sentence length and structure to keep the reader engaged.
                Finally, end with a strong concluding sentence that summarizes the main points.
                Remember, practice makes perfect! """ 

    #convert to lower case and remove puncatuation
    string = string.lower().replace("\n", " ").replace(".", "").replace(",", "")

    words = string.split()
    unique_words = set(words)
    print(len(unique_words))
