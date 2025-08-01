# <p align="center">Key Concepts in Machine Learning</p>
---

## How does machine learning work?
Machine learning works through the following key steps:

### Problem Definition and Goal Setting
* Clearly define the machine learning problem (e.g., classification, regression, clustering) and the desired outcome.
* Understand the business or research context to guide the feature engineering process.

### Data Collection and Preparation
The goal of Prepering Data: 
* **Data Collection:** Gathering relevant data from various sources.
* **Data Cleaning:** Handling missing data, removing duplicates, outliers, and correct inconsistencies.
* **Data Exploring:** the data using techniques like histograms, scatter plots, and heatmaps to understand relationships and patterns.
* **Data Transformation:** Scaling, normalization, and encoding data to prepare it for model training.

> [!NOTE]
> The primary goals are:
> * **Quality:** Data must be accurate, complete, and relevant.
> * **Quantity:** AI requires large datasets to build reliable and scalable models.
> * **Completeness:** Missing data points must be handled to avoid inaccurate outcomes.

### Feature Engineering
* This is where you transform and select the most useful features for your model.
* **Feature Creation:** Create new features from existing ones, combining them or applying mathematical transformations.
* **Feature Selection:** Choose the most relevant features to improve model performance and reduce complexity.
* **Encoding Categorical Variables:** Convert categorical variables into numerical representations that algorithms can handle (e.g., one-hot encoding).
* **Feature Scaling:** Scale numerical features to a consistent range (e.g., standardization, normalization) to prevent features with larger scales from dominating the learning process.
* **Handling Outliers:** Identify and handle outliers (e.g., through removal or transformation) as they can negatively impact model accuracy.

### Model Selection: 
* Choose an appropriate machine learning algorithm based on the problem type and data characteristics.
* Train the model on a portion of the data (training set) to learn the relationships between features and the target variable.

### Training the Model:
Feed the algorithm with the prepared data to train the model. During training, the model learns patterns and relationships within the data.
* **Learning from Data:**
  The process where the model learns patterns and relationships from the training data. 
* **Parameter Tuning:**
  Adjusting the model's parameters to optimize its performance. 
* **Overfitting and Underfitting:**
  Identifying and addressing situations where the model learns the training data too well (overfitting) or not well enough (underfitting)

### Model Evaluation and Validation:
Assess the model’s performance using a separate set of data not used during training (test dataset, validation dataset). This step helps ensure the model can generalize well to new, unseen data.
* **Performance Metrics:**
  Using metrics like accuracy, precision, recall, F1-score, and AUC to assess the model's performance.
* **Overfitting and Underfitting:**
  Understanding the concept of overfitting (model is too complex) and underfitting (model is too simple).
* **Cross-Validation:**
  Evaluating the model's performance on unseen data to ensure it generalizes well.

### Fine-Tuning:
Adjust the model’s parameters or features to improve its performance based on the evaluation results.

### Optimization: 
* **Bias-Variance Trade-off:**
Finding the right balance between model complexity (variance) and its ability to make accurate predictions (bias).
* **Regularization:**
Using techniques to prevent overfitting by adding penalties to complex models.
* **Hyperparameter Tuning:**
Adjusting the algorithm's settings (hyperparameters) to optimize its performance.
    
### Deployment:
Integrate the trained model into applications or systems where it can be used to automate tasks, make predictions, or assist in decision-making
* **Making Predictions:** Once trained and fine-tuned, the model is ready to make predictions or decisions when presented with new, unseen data.
* **Monitoring and Maintenance:** Regularly monitor the model’s performance in real-world scenarios, and update or retrain it as needed to adapt to changes in the data distribution.

## Most Important Machine Learning Algorithms
* **Linear Regression:**
* **Logistic Regression:**
* **Decision Trees:**
* **Random Forest:**
* **Support Vector Machines:**
* **K-Nearest Neighbors (KNN):**
* **K-Means Clustering:**
* **Naive Bayes:**
* **Principal Component Analysis (PCA):**
* **Gradient boosting Machines:**
* **Dimensionality Reduction**

## Algorithms with it's Types of Machine Learning 
### Supervised Learning:
* Definition: Algorithms learn from labeled data to make predictions or classifications on new, unseen data. 
* Examples:
  * Regression: Linear Regression, Logistic Regression 
  * Classification: Support Vector Machines (SVM), k-Nearest Neighbors (k-NN), Decision Trees, Naive Bayes 
* Applications: Spam detection, image recognition, predicting stock prices.

### Unsupervised Learning:
* Definition: Algorithms learn from unlabeled data to discover patterns, group similar data, or reduce dimensions. 
* Examples:
  * Clustering: k-Means, Hierarchical Clustering 
  * Dimensionality Reduction: PCA, t-SNE. 
* Applications: Customer segmentation, anomaly detection, image compression. 

### Semi-Supervised Learning:
* Definition: Algorithms learn from a combination of labeled and unlabeled data.
* Examples: Self-training, co-training.
* Applications: When labeled data is scarce but unlabeled data is abundant. 

### Reinforcement Learning:
* Definition: Algorithms learn by interacting with an environment to maximize rewards through trial and error.
* Types:
  * Model-based: Builds a model of the environment to make decisions. 
  * Model-free: Learns directly from experience without building a model (e.g., Q-learning, deep Q-network). 
* Examples: Q-learning, Deep Q-Network (DQN).
* Applications: Game playing, robotics, resource management. 

---
## Model Performance Matrics (Evaluation Matrics for Machine Learning)
### *Performance Metrics for Classification Problems*
* Accuracy
* Logarithmic Loss
* Area Under Curve (AUC)
* Precision
* Recall
* F1 Score
* Confusion Matrix

### *Performance Metrics for Regression Problems*
* Mean Absolute Error (MAE)
* Mean Squared Error (MSE)
* Root Mean Square Error (RMSE)
* Root Mean Squared Logarithmic Error (RMSLE)
* R2 - Score


## Reference
* [Unspervised Learning's Algorithms](https://www.geeksforgeeks.org/unsupervised-learning/)
* [Introduction to Unsupervised Learning](https://www.datacamp.com/blog/introduction-to-unsupervised-learning)
* [Types of Machine Learning Algorithms](https://www.geeksforgeeks.org/types-of-machine-learning-algorithms/)
* [Machine Learning: Concepts, Algorithms, and Real-World Applications](https://coralogix.com/ai-blog/machine-learning-concepts-algorithms-and-real-world-applications/)
* [A guide to the types of machine learning algorithms and their applications](https://www.sas.com/en_gb/insights/articles/analytics/machine-learning-algorithms.html#:~:text=There%20are%20four%20types%20of,%2Dsupervised%2C%20unsupervised%20and%20reinforcement.)
* [What is Machine Learning](https://ischool.syracuse.edu/what-is-machine-learning/)
* [Most Important Machine Learning Algorithms](https://bayramblog.medium.com/most-important-machine-learning-algorithms-00e97ab5a035)
* [Top 15 Machine Learning Algorithms Every Data Scientist Should Know in 2025](https://www.geeksforgeeks.org/top-10-algorithms-every-machine-learning-engineer-should-know/)
* [10 Top Machine Learning Algorithms & Their Use-Cases](https://www.datacamp.com/blog/top-machine-learning-use-cases-and-algorithms)
* [Top 10 Deep Learning Algorithms You Should Know in 2025](https://www.hyperstack.cloud/blog/thought-leadership/top-deep-learning-algorithms-you-should-know)
* [10 Machine Learning Algorithms to Know in 2025](https://www.coursera.org/articles/machine-learning-algorithms)
* [Classification in Machine Learning: An Introduction](https://www.datacamp.com/blog/classification-machine-learning)
* [ML 101 (Part 1) : Basics of Machine Learning](https://savindi-wijenayaka.medium.com/ml-101-part-1-basics-of-machine-learning-1734836696c1)
* [Getting started with Classification](https://www.geeksforgeeks.org/getting-started-with-classification/)
* [An Introduction to the World of Machine Learning](https://medium.com/@rithesh18.k/an-introduction-to-the-world-of-machine-learning-5b182dde7b92)
* [Machine Learning is Fun!](https://medium.com/@ageitgey/machine-learning-is-fun-80ea3ec3c471)
* [Getting started in machine learning](https://medium.com/unruly-engineering/getting-started-in-machine-learning-b51b3b1917ad)
* [Entering the world of Machine Learning](https://medium.com/getting-better-together/entering-the-world-of-machine-learning-82b84c9113ec)
* [How machine learning algorithms work](https://www.ibm.com/think/topics/machine-learning-algorithms#:~:text=There%20are%20four%20types%20of,both%20unsupervised%20and%20supervised%20learning.&text=The%20following%20are%20the%20most%20popular%20and%20commonly%20used%20algorithms.)
* [Five machine learning types to know](https://www.ibm.com/think/topics/machine-learning-types)
* [A guide to the types of machine learning algorithms and their applications](https://www.sas.com/en_gb/insights/articles/analytics/machine-learning-algorithms.html#:~:text=There%20are%20four%20types%20of,%2Dsupervised%2C%20unsupervised%20and%20reinforcement.)
* [Machine Learning Algorithms](https://www.geeksforgeeks.org/machine-learning-algorithms/)
* [Data Mining and Machine Learning](https://www.tdktech.com/tech-talks/data-mining-and-machine-learning/#:~:text=Data%20Mining%20and%20Machine%20Learning%20Machine%20learning,model%20appropriate%20for%20the%20environment%20being%20studied.)
