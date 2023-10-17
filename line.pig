-- Load data from multiple folders
data = LOAD '/Users/jeyam/Downloads/maildir/*/*/*' USING PigStorage('\t') AS (line:chararray);

-- Group and count lines
line_groups = GROUP data ALL;
line_count = FOREACH line_groups GENERATE COUNT(data);

-- Store the total line count
STORE line_count INTO 'output_line_count';
