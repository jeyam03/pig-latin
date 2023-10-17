-- Load data from multiple folders
data = LOAD '/Users/jeyam/Downloads/maildir/*/*/*' USING PigStorage('\t') AS (line:chararray);

-- Tokenize the text data
words = FOREACH data GENERATE FLATTEN(TOKENIZE(line)) AS word;

-- Filter out empty words (optional)
words = FILTER words BY word IS NOT NULL AND word != '';

-- Group and count words
word_groups = GROUP words BY word;
word_count = FOREACH word_groups GENERATE group AS word, COUNT(words) AS count;

-- Store the aggregated Word Count result
STORE word_count INTO 'output_word_count';
