# <p align="center"> Machine Learning Fundamentals </p>
---

## What is Machine Learning
Machine learning is a branch of artificial intelligence focused on building systems that can learn from data and improve their performance over time without being explicitly programmed. The primary aim is to develop algorithms that can recognize patterns and make decisions based on data inputs.

* Traditional programming **uses algorithms** to produce results from data:
```
Data + Algorithms = Results
```
* Machine learning **creates algorithms** from data and resutls:
```
Data + Result = Algorithms
```

Machine Learning (ML) and Artificial Intelligence (AI) are transforming the way we process data, make predictions, and automate decision-making. At the heart of ML, three fundamental techniques drive most applications:
* **Regression** → Used for predicting continuous values (e.g., house prices, stock trends).
* **Classification** → Assigns predefined labels to data (e.g., spam detection, medical diagnosis).
* **Clustering** → Groups similar data points together (e.g., customer segmentation, fraud detection).

### Ordinary Programming Vs Machine Learning
In ordinary programming, the job of the programmers is to clearly write every single rule that makes up the task they are trying to accomplish. In order to get the results, they must write all rules that acts up on the data.

Machine learning flips that. Instead of having to write the rules that makes up a particular application, we can feed data and results(or labels) to the machine learning model, and its job can be to determine the set of rules that map the data and labels.

Let's take a real world example. If you wanted to build an application that given a picture of person can determine if he/she is wearing or not wearing a facemask, you can just feed a bunch of images of people with and without facemasks to the machine learning model, and the model can learn the rules or patterns that map the images to whether they have a facemask or not.

---
## Type of Machine Learning
* **Supervised Learning:** This involves training models on labeled data, where the input data comes with predefined output labels. The main tasks include:
  * **Classification:** Classification is employed when your task involves sorting data into predefined categories or classes. It’s used when you need to make decisions based on distinct categories, providing a clear yes/no or class label for each input instance. Typical applications include spam email detection, fraud detection in financial transactions, tumor classification in medical imaging, or sentiment analysis in text data.
  * **Regression:** Regression is used when the output you’re trying to predict is a continuous numerical value. It’s suitable for tasks where you want to understand the relationship between input variables and the continuous outcome, allowing for prediction and estimation of future values. Common applications include predicting sales figures, stock prices, temperature, or any other variable that can vary along a continuous scale.
* **Unsupervised Learning:** This type deals with unlabeled data and seeks to uncover hidden patterns or intrinsic structures within the data. Key tasks include:
  * **Clustering:** Clustering is utilized when you want to discover inherent structures or natural groupings within your data. It’s beneficial for tasks where you want to find similarities between data points without knowing the specific groups in advance. Clustering is commonly used for customer segmentation, identifying similar documents or articles, anomaly detection, or exploratory data analysis to reveal patterns and relationships.
  * **Dimensionality Reduction:** Reducing the number of features in a dataset while preserving essential information, such as using Principal Component Analysis (PCA) to simplify datasets.
* **Reinforcement Learning:** This approach involves training models to make decisions by interacting with an environment and receiving feedback in the form of rewards or penalties. It is often used in areas like game playing and robotics.
* **Semi-supervised Learning:** Training data includes a few desired outputs.

### Difference between Types of Machine Learning
Regression, classification, and clustering are core machine learning techniques, each serving distinct purposes. Regression predicts continuous values like house prices, classification assigns data to predefined categories like spam detection, and clustering groups similar data points together without labels, like customer segmentation.

Here's a more deftailed breakdown:
* **Regression:**
  * **Purpose:** Predicts a continuous numerical value based on input data.
  * **Example:** Predicting the price of a house based on its size, location, and other features.
  * **Supervised Learning:** Requires labeled data where the output is a continuous value.
  * **Output:** A continuous value, such as a number or a quantity.
  * **Goal:** To find a relationship between input variables and a continuous output variable. 
* **Classification:**
  * **Purpose:** Assigns data points to predefined categories or classes.
  * **Example:** Classifying emails as spam or not spam.
  * **Supervised Learning:** Requires labeled data where the output is a discrete category or label.
  * **Output:** A discrete category or label.
  * **Goal:** To learn the relationships between input variables and predefined categories.
* **Clustering:**
  * **Purpose:** Groups similar data points together based on their characteristics.
  * **Example**: Grouping customers into segments based on their purchasing behavior.
  * **Unsupervised Learning:** Does not require labeled data; the goal is to discover hidden structures.
  * **Output:** Clusters of similar data points.
  * **Goal:** To identify groups of data with similar characteristics.

---
## Machine Learning Algorithms
### Supervised Learning
In Supervised Learning, algorithms learn from labeled data. After sufficient training on a dataset, these algorithms can start to predict the output for unseen data based on past learning.
* Logistic Regression
* Linear Regression
* Support Vector Machines (SVM)
* Decision Trees
* Random Forest
* Gradient Boosting Algorithms (XGBoost, GBM, LightGBM)
* Naive Bayes Classifier
* K-nearest neighbors (KNN)
* Neural Networks
**Use Cases:** Diagnosis in healthcare, credit scoring, spam detection in emails, weather forecasting, sales predictions, and personalized marketing.

### Unsupervised Learning
Unsupervised Learning focuses on detecting patterns in data. What makes these algorithms unique is their ability to operate on unlabeled data.
* K-means Clustering
* Hierarchical Clustering
* Density-Based Spatial Clustering of Applications with Noise (DBSCAN)
* Expectation Maximisation (EM)
* Principal Component Analysis (PCA)
* Singular Value Decomposition (SVD)
* Independent Component Analysis (ICA)
* Collaborative Filtering (User-User Filtering, Item-Item Filtering)
**Use Cases:** Customer segmentation for targeted marketing, image compression, data mining for anomaly detection, pattern recognition and recommendation filtering in e-commerce.

### Semi-Supervised Learning
Semi-Supervised algorithms use a mixture of labeled and unlabeled data for training. It’s often used when labeled data requires skilled and relevant resources to train it but unavailable in sufficient quantities.
* Generative Models
* Low-Density Separation
* Multi-view Training
* Self-training
**Use Cases:** Speech analysis and recognition, protein classification for medicinal research in bioinformatics, web-page classification for optimizing search engine results.

### Reinforcement Learning
Reinforcement Learning is about interaction. These algorithm learns to react to an environment such that it maximizes some notion of cumulative reward.
* Q-Learning
* Deep Q Network (DQN)
* State-Action-Reward-State-Action (SARSA)
* Deep Deterministic Policy Gradient (DDPG)
* Advantage Actor Critic (A3C)
* Monte Carlo Methods
**Use Cases:** Game-playing AI, real-time decisions in autonomous vehicles, resource management and optimization process in logistics and manufacturing.

### Dimensionality Reduction
Dimensionality reduction algorithms are used when the number of input features (or dimensions) is too high. Reducing complexity can help in avoiding overfitting, reduce noise and improve performance.
* Principal Component Analysis (PCA)
* Linear Discriminant Analysis (LDA)
* Generalized Discriminant Analysis (GDA) 
* t-Distributed Stochastic Neighbor Embedding (t-SNE)
* Truncated Singular Value Decomposition (SVD)
* Uniform Manifold Approximation and Projection (UMAP)
* Independent Component Analysis (ICA)
*Factor Analysis
**Use Cases:** Visualization of multi-dimensional data, feature extraction, noise reduction, bioinformatics for genetic clustering. 

### Ensemble
Ensemble methods use multiple learning algorithms to obtain better predictive performance. They typically reduce overfitting and perform better than a single model.
* Bagging and Bootstrap Aggregation (Random Forest)
* Boosting (AdaBoost, Gradient Boosting)
* Stacking
* Extreme Gradient Boosting (XGBoost)
**Use Cases:** Predictive maintenance in manufacturing, fraud detection in banking, risk modeling in finance, data fusion and meta-genomics.

### Deep Learning
Deep Learning algorithms are an advanced set of ML algorithms that use artificial neural networks with several layers of abstraction. This specialization lets them handle data that other algorithms can’t.
* Convolutional Neural Networks (CNN)
* Recurrent Neural Networks (RNN)
* Long Short Term Memory Networks (LSTM)
* Gated Recurrent Unit Networks (GRU)
* Radial Basis Function Networks (RBFN)
* Restricted Boltzmann machines (RBM)
* Deep Belief Networks (DBN)
* Autoencoders
* Generative Adversarial Networks (GANs)
**Use Cases:** Advanced voice recognition, image recognition, natural language processing, real-time anomaly detection, automated driving, predicting customer-churn in businesses.

### Natural Language Processing
Natural Language Processing (NLP) algorithms deal with text data – they’re about machine interaction with human language. They're heavily used in AI assistants and chatbots.
* Bag of Words (BoW)
* Term Frequency-Inverse Document Frequency (TF-IDF)
* Word2Vec
* Latent Dirichlet Allocation (LDA)
* BERT (Bidirectional Encoder Representations from Transformers)
**Use Cases:** Sentiment analysis, text classification, search suggestions, speech recognition, chatbots and personal assistants.

### Anomaly Detection
Anomaly detection algorithms are used to identify abnormal or unusual patterns that deviate from what’s expected. This makes them ideal for detecting fraud and defects.
* Box plots and Histograms
* Clustering-Based Anomaly Detection (K-means)
* Repartitioning-Based Anomaly Detection (HBOS)
* Classification-Based Anomaly Detection (SVM)
* Nearest Neighbor-Based Anomaly Detection (k-NN)
* Statistical Anomaly Detection (ABOD)
**Use Cases:** Fraud detection in online banking, intrusion detection in cybersecurity, fault detection in safety-critical systems, healthcare monitoring for abnormal patient states.

### Association RuleLearning
Association Rule Learning algorithms enforces ‘if-then’ rules, which are common in ML tasks, that identify relationships between seemingly unrelated data in a dataset.
* Apriori Algorithm
* Equivalence CLAss Transformation (Eclat)
* FP-Growth (Frequent Pattern Growth)
* Direct Hashing and Pruning (DHP)
* OPUS Miner (Optimized Pattern Under Search)
**Use Cases:** Cross-selling in e-commerce, catalog design, loss-leader analysis in sales, detecting adverse drug reactions in healthcare, recommendations in online services like Netflix, Amazon or Google. 

---
## Applications of Machine Learning
Machine learning has broad applications across various domains:
* **Healthcare:** Disease diagnosis, personalized treatment plans, and drug discovery.
* **Finance:** Fraud detection, algorithmic trading, and risk management.
* **Marketing:** Customer segmentation, recommendation systems, and sentiment analysis.
* **Autonomous Vehicles:** Object detection, navigation, and decision-making.

## Machine learning libraries
### Scikit-learn:
This is a comprehensive library for machine learning algorithms. It excels in tasks like classification, regression, clustering, and dimensionality reduction. Scikit-learn is known for its ease of use and is suitable for smaller datasets and simpler models. It primarily operates on CPUs.
### TensorFlow:
It is a powerful framework mainly used for deep learning, but it can also handle traditional machine learning tasks. TensorFlow is designed for building and training complex neural networks and supports GPU and TPU acceleration, making it suitable for large-scale, computationally intensive projects. It offers both high-level APIs (like Keras) and low-level control for advanced customization.
### PyTorch:
Similar to TensorFlow, PyTorch is a deep learning framework favored for its flexibility and dynamic computation graph. It is widely used in research and prototyping due to its Python-friendly interface and strong GPU acceleration. PyTorch is also suitable for complex neural networks and large datasets.

---
## Referece
* [AML Machine Learning](https://sumsub.com/blog/aml-machine-learning/)
* [The Role of Machine Learning in Anti-Money Laundering](https://financialcrimeacademy.org/machine-learning-algorithms-for-aml/)
* [Machine Learning Complete](https://github.com/Nyandwi/machine_learning_complete)
* [Best Python Libraries for Machine Learning](https://www.geeksforgeeks.org/best-python-libraries-for-machine-learning/)
* [Difference Between Supervised And Unsupervised Learning](https://talent500.com/blog/supervised-vs-unsupervised-learning-differences/#:~:text=Data%20Labeling%20and%20Input%20Supervised%20Learning:%20Requires,predict%20specific%20outcomes%20based%20on%20historical%20data.)
* [Classic Machine Learning: Part 2/4 Regression](https://medium.com/@a.r.amouzad.m/classic-machine-learning-part-2-4-regression-24086d7cc374)
* [Classification vs. Clustering: Key Differences Explained](https://www.simplilearn.com/tutorials/data-analytics-tutorial/classification-vs-clustering#:~:text=Clustering%20is%20an%20example%20of%20an%20unsupervised,consistent%2C%20then%20we%20have%20a%20regression%20problem.)
* [Clustering vs Classification: Difference Between Clustering & Classification](https://www.upgrad.com/blog/clustering-vs-classification/)
* [What’s the Difference Between Classification and Clustering, and What About Regression?](https://pg-p.ctme.caltech.edu/blog/data-analytics/difference-between-classification-clustering-regression)
