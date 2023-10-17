# Pig Latin Script

## Overview
This Pig Latin script is designed to process the Enron Email Dataset and perform three key tasks:

1. **Word Count**: Calculate the frequency of each word used in the email dataset, by tokenizing the email content to extract individual words.

2. **Line Count**: Determine the total number of lines in the dataset.

3. **Unique Email Address Count**: Identify and count the unique email addresses found in the emails using *regular expressions*.

## Dataset
The Enron Email Dataset contains approximately **0.5 million email** messages from about 150 users, primarily senior management of Enron. The dataset was collected and prepared by the CALO Project and made public by the Federal Energy Regulatory Commission during its investigation.

## Running the Script
To run the Pig Latin script:

1. Ensure you have Apache Pig installed and configured on your system.

2. Modify the script to specify the correct path to the Enron Email Dataset.

3. Execute the script using the following command:

```bash
pig -x local your_script.pig
```

4. The results will be stored in separate output files: one for word count, one for line count, and one for unique email address count.

## References
* [Enron Email Dataset](http://www.cs.cmu.edu/~enron/)
* [Apache Pig](https://pig.apache.org/)

