# Text-mining-Physician-Reviews

# Project: Do Patient Reviews have any impacts on Physician Sanctions? Insights from Text-Mining Physician Reviews


## **Problem Statemnent**

Doctors can be disciplined for criminal convictions, medical negligence, wrongly prescribing controlled substances, and other wrongdoing. However, many doctors typically have no more than a few reviews on a site, and the reviews may not accurately reflect the doctor’s qualifications, personality, or patient experience. 

## **Objectives**

➔	To investigate the connection between doctor sanctions and patient reviews.

➔	To determine the sentiment of all the reviews and to identify the impact of each bucket on the doctor’s ratings and their average sentiment scores.

➔	To examine the relationship between the ratings given to Medical Physicians on RateMDs and their patient reviews.


## **Methods**

_1.1 Dataset & Data Pre- Processing:_

* We Compiled a list of fraudulent doctors in Illinois and Michigan state with the reasons for their sanction, considering doctors with speciality as general physicians from “ProPublica”.

* Further considered only those doctors who can be tracked by ID on RateMds.

* Obtained doctor's ratings and every single review of each patient from RateMds.

* Removed null values, then used VADER computed sentiment scores, and divided the texts into positive and negative buckets using compound scores.

* Concatenated all the positive reviews for one doctor together and negative reviews together, and performed the same for all doctors.

* Finally, we have 202 doctors and 8 features including state, specialty, gender, review text, and name after removing duplicate rows and performing text pre-processing on reviews.

_1.2 Text Pre-Processing & Topic Modelling:_

* We performed text pre-processing on reviews like removing stop words like ‘is’, ‘the’,’ and’, tokenized text into tokens(words), removing special characters, and lemmatization which is the process of grouping together different inflected forms of the same word.

* Furthermore, we also removed unwanted doctor names present in the text of the reviews, and we got a clean review text, which is used ahead for topic modeling using Corex and Zero-Shot Classification.

* We computed 7 topic Corex scores of negative reviews and positive reviews, topics include Bedside Manners, Communication, Knowledge, Office Environment, Scheduling, Wait Times, Cost, and Insurance.

* Similarly using zero-shot classification we computed 5 topic scores for sanctioned texts of doctors which include Improper treatment, Unprofessional Immoral conduct, failure to pay income taxes, CME Continuing Medical Education, and Patient Harm.

_1.3 Linear Regression:_

* Linear regression was performed to determine the impact of various attributes on the overall rating. The analysis showed that communication and scheduling had a significant effect on overall rating, while the impact of sanctions was not significant.


### **Results**

From the initial analysis of the reviews, the most frequent topics spoken about in the reviews were Bedside Manners, Communication, Knowledge, Office Environment, Scheduling, Wait Times, Cost, and Insurance. Using the Corex scores we got, Communication, Bedside manners, knowledge, and scheduling were predominantly spoken about in the reviews. From the initial analysis of the sanctioned reason the most frequently filed sanctions are because of Improper treatment or prescription, CME Continuing Medical Education Unprofessional Immoral conduct, failure to pay income taxes, Patient Harm, topic scores of scheduling and communication had a positive impact on the overall rating, while the negative topic scores of the same had a negative impact. The linear regression model was deployed to identify the significant features directly affecting the overall rating. 


## **Conclusion**

This project aimed to explore the impact of various factors on doctors' overall ratings, including their topic scores for positive and negative reviews, as well as their sanctions for multiple reasons. The analysis revealed a significant correlation between the topic scores of reviews and doctors' overall ratings. Positive reviews that cover crucial topics resulted in higher ratings, while negative reviews had the opposite effect. 

The study also found that doctors who had been sanctioned for multiple reasons tended to have lower overall ratings, indicating a negative perception among the public. However, the analysis did not find any statistical significance between the sanctioned reasons and doctors' overall ratings, possibly due to public unawareness of such sanctions or lack of reviews for sanctioned doctors no longer practicing. These findings suggest the importance of paying attention to patients' feedback on doctors' performance and the need to raise public awareness of doctors' sanctions.

Overall, the project provides valuable insights into the factors that influence doctors' ratings and underscores the importance of addressing issues related to sanctions to improve the overall perception of doctors in the public eye. The study also highlights the importance of using advanced statistical techniques, such as linear regression analysis, to gain insights into complex relationships between online reviews and the reasons for the sanctions

## **Contributors**

Narayani Vadhuka 

Preethi Srinivasan 

Vinyl Anipe

Professor Ranganathan Chandrasekaran







