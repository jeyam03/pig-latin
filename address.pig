-- Load data from multiple folders
data = LOAD '/Users/jeyam/Downloads/maildir/*/*/*' AS (email:chararray);

-- Tokenize the email content to extract email addresses
emails = FOREACH data GENERATE FLATTEN(REGEX_EXTRACT_ALL(email, '([a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4})')) AS email_address:chararray;

-- Filter out empty email addresses (optional)
emails = FILTER emails BY email_address IS NOT NULL;

-- Group and count unique email addresses
email_groups = GROUP emails BY email_address;
email_count = FOREACH email_groups GENERATE group AS email_address, COUNT(emails) AS email_count;

-- Store the result
STORE email_count INTO 'output_email_count';
