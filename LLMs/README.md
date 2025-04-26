# <p align="center"> Large Language Models (LLMs): The Backbone of Generative AI </p>
---
___<p align="center">Generative AI has taken the world by storm, powering everything from AI chatbots to code generation tools. At the heart of this revolution are Large Language Models (LLMs) </br>A massive AI systems trained to understand and generate human-like text.</p>___

```txt
>>> TODO:
------------
- Difference between Supervised learning, Unsupervised learning, Reinforcement Learning in Machine Learning?
- What is about `neural network`, `gradient descent` and `backpropagation` in deep learning?
- Relationship between Linear regression an tokenization
- How do GPT LLMs answer questions?
- Understand transformer models and attention mechanisms
- Explore different types of LLMs and their applications
- Understand the architectures of popular LLMs
- Delve into misconceptions and concerns about LLMs, as well as how to best utilize them
- RESEARCH EMSSEMBLE MODELS AND DOMAIN/SPECIFIC MODELS TO TRAINING ADAPT TO SPECIFIC REQUIREMENTS' CUSTOMERS
- Be able to answer the question: What are Large Language Models?
- Understand techniques such as prompt engineering, fine-tuning, RAG, and vector databases
- Know the best practices for effective implementation
- Know the metrics and frameworks essential for evaluating the performance of Large Language Models
- Generation, OpenAI API, Hugging Face, and Vector databases
- How Transformer Models Generate Images from Text
```
---
## The Rise of Large Language Models
LLMs are AI systems trained on massive datasets to understand and generate human-like text. But how did we get here? Let’s rewind the clock:
* **1950s–2000s: Bag-of-Words**<br/>
Early approaches treated text as a “bag” of disconnected words. For example, analyzing a movie review might count words like “great” or “boring” to infer sentiment. While simplistic, this laid the groundwork for text representation in AI systems.
* **2013: Dense Vector Embeddings**<br/>
Models like **word2vec** began capturing the meaning of words by analyzing the context in which they appeared. For instance, in word embeddings, “king” and “queen” might share similar properties, while differing slightly to reflect gender.
* **2017: The Transformer Model**<br/>
A groundbreaking paper titled _“Attention is All You Need”_ introduced the **Transformer architecture**, which became the backbone of modern LLMs. Transformers used a mechanism called **attention** to understand context more effectively.
* **2018 and Beyond: BERT and GPT**<br/>
OpenAI’s **GPT** models focused on text generation, while Google’s **BERT** excelled at understanding context for tasks like classification. Both became cornerstones of Language AI.
* **2023: The Year of Generative AI**<br/>
The release of **ChatGPT** by OpenAI marked a turning point, bringing LLMs into the mainstream. With millions of users in mere months, it set the stage for widespread adoption of AI chatbots.

---
## The field of AI often visualized in layers
* **Artificial Intelligence** (AI) is very a broad term, but generally it deals with intelligent machines.
* **Machine Learning** (ML) is a subfield of AI that specifically focuses on pattern recognition in data. As you can imagine, once you recoginze a pattern, you can apply that pattern to new observations. That’s the essence of the idea, but we will get to that in just a bit.
* **Deep Learning** is the field within ML that is focused on unstructured data, which includes text and images. It relies on artificial neural networks, a method that is (loosely) inspired by the human brain.
* **Large Language Models** (LLMs) deal with text specifically, and that will be the focus of this article.

## The architecture of Large Lnaguage Models
At their core, modern LLMs use a transformer architecture, a breakthrough in deep learning that revolationized natural language processing. This architecture, introduced in the landmark paper *Attention is All You Need*, represented a paradigm shift in how AI processes language.

Unlike previous models that processed text sequentially, transformers can analyze entire dequences of text simultaneously, leading to better understanding of context and relationships between words.

### Architectural Foundations
* **Self-Attention Mechanism:** The heart of the transformer, allowing the model to weigh the importance of different words in relation to each other. For example, in the sentence “The cat sat on the mat because it was comfortable,” the model can understand that “it” refers to “mat” rather than “cat”.
* **Feed-Forward Neural Networks:** These networks process the weighted words from the seft-attention mechanism, helping the model make predictions about the next word in a sequence or generate repsonses.
* **Layer Normalization:** Stabilization techniques that ensure the model trains effectively despite its massive scale, preventing issues like vanishing or exploding gradients
* **Positional Encoding:** Since transformers don't have a sense of sequence, positional encoding is used to assign each word a position in the sentence, preserving the order an context. A clever mathematical solution that helps the model understand word order, since the self-attention mechanism itself is orderagnostic.

> [!IMPORTANT]
> **Key Insight:** The self-attention mechanism allows LLMs to weigh the importance of different words in context, similiar to how humans focus on relevant parts of sentences. This is what enables them to maintain coherence across long passages and understand subtle contextual nuances.
---
## Neural Networks and LLMs
LLMs are built on neural networks (as a mathematical model), millions or billions of nodes connected by links. There's an input layer of nodes and an ouput layer, with mathematics `signals` passed through thess connections. Different types of neural networks are suited for tasks like `classification`, `image recognition`, `sentiment analysis`, and `text completion`. LLMs, specifically, use a type of neural network called **Transformers**.

### Transformers
Transformer models are a type of neural network used in Natural Language Processing (NLP). They excel at understanding contextual data, where the meaning of words depends on their surrounding context, sentences, and even entire paragraphs. The Transformer architecture is adept at learning these patterns, making it ideal for language-based tasks.

Transformers, the underlying architecture of LLMs, can be categorized into three types based on their functions:
* **Encoder-only Transformers**, which are designed for understanding language.
* **Decoder-only Transformers**, which excel at generating text.
* **Encoder-Decoder Transformers**, which are particularly effective for translation tasks, as they can both understand and generate language.

|**Type**|**Goal**|**Relevant Examples**|
|--------|--------|---------------------|
|Encoder-only|Extractive QA, Sentiment analysis|BERT|
|Decoder-only|Generative QA, text generation|GPT|
|Encoder-Decoder|Text summarization, translation|LLaMA, BART, T5|

### Embeddings
In LLMs, words (often referred to as tokens) are mapped into a multi-dimensional space through a process called **embedding**. Embeddings assign each word a position in this space (embed them), placing it near other words with similar meanings. Imagine a 3D space with multiple axes—each word is embedded near related terms and further refined by **positional encoding**, which helps differentiate words that are the same, but with different meanings based on context (position of that word in the sentence).

Next the relevance of the word is taken into account in relation to other words. This is a **relevance vector**, and becomes the joining lines in the mesh of words in the multidimensional space. Each of those vectors has a **weight** depending on relevance to other words. The length of the linking lines between the nodes determines the shape of the word matrix and is used when generating output.

**Fine Tuning** is process related to adding additinal training to models by adjusting the positions of the nodes and links in the matrix using an operation.
**Open/Closed Weights**: This is only possible with models that have open weights, that available to adjust by the end user. Some models have closed weights and cannot be altered.
**Open-source AI**: an open-source AI models share their underlying code, training data, and architecture, allowing developers and researchers to study how they work, customize them for specific applications, and contribute improvements. This transparency fosters innovation and collaboration across the AI community, helping accelerate advancements in AI technology. Many open-source models, such as those found on platforms like Hugging Face, can be freely used, adapted, and integrated into various projects, making AI more accessible and flexible for a broad range of users and applications.

Embeddings are crucial in LLMs, especially for techniques like **Retrieval-Augmented Generation (RAG)**, which use vector databases to improve output relevance. There are various embedding algorithms, including:
* **Word2Vec** by Google
* **GloVe** (Global Vectors for Word Representation)
* **BERT** (Bidirectional Encoder Representations from Transformers)
* **ELMo** (Embeddings for Language Models)
These techniques also apply to graphs and images. AI platforms often offer different embedding options to choose from.

---
## Enssemble Models
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ensemble models **combine multiple models** to improve overall performance, accuracy, robustness an efficiency. Rather than relying on a single model, ensemble methos leverage the strengths of various models, each of which my specialize in different aspects of a task or provide unique insights. The idea is that while individual models might make mistakes or have certain biases, combining them allows those weaknesses to be minimized, leading to better generaliztion on new datra. Depending on number of models, it also reduces operting costs to delegate subtasks on to smaller cheaper models.

Where cost is not the concern, an ensemble might combine a few smaller models trained on different data subsets or models that use different algorithms altogether (such as decision trees, neural networks, or support vector machines). Ensemble methods include:
* **Baggins** - Where multiple versions of a model are trained on bootstrapped data samples.
* **Boosting** - where models are sequentially trained to focus on previous models' mistakes
* **Stacking** - where models' ouputs are combined by a `meta-learner`
Ensembles are good where high accuracy is crucial and errors are costly - such as finance for risk assessment, healthcare for diagnostic predictions, or autonomous driving for decision-making under varying conditions.

**Voting** _is a method used to combine the outputs of multiple models to make a final prediction._ Voting is especially common in classification tasks, whree each model in the ensemble independently predicts a class label, and the ensemble the decides on the most likely class by `voting` among these predictions.

The drawback is that ensemble models can be computationally heavy and header to interpret, with extra complexity as they often involve coordination multiple models simultaneously. However, the significant boost in reliability and performance makes ensembles a go-to approach for complex tasks where individual models may fall short.

---
## Tokenization vs Embedding - How are they Different?
In the context of Large Language Models (LLMs), tokens are the basic units of text that the model processes, while embeddings are numerical representations of those tokens that help the model understand their meaning and relationships. Think of it like this: a token is a single word, a subword, or even a character, and an embedding is a vector that captures the meaning and context of that token

---
## The Science Behind Token Processing
### How Models Break Down Text
LLMs don't process raw text directly. Instead, they convert text into tokens:
1. Words → subword units.
2. Numbers → digit sequences.
3. Punctuation → individual marks.
For example, "unstoppable" might be broken down into: `"un" + "stop" + "able."`

This allows the model to:
* Handle unknown words more effectively.
* Recognize common patterns.
* Operate efficiently with a limited vocabulary.
### Context Window Mechanics
The context window (e.g., 8K, 32K, or 100K tokens) defines how much text the model can process at once:
* It's like a sliding window over a long piece of text.
* Older tokens might be compressed or forgotten.
* Recent tokens receive more attention, enabling the model to maintain focus on the immediate context.

---
## Understaning Model Behavior
### Why Ouputs Can Vary
Even with identical inputs, an LLM might generate differenct outputs due to:
1. Internal State Complexity
   * Billions of parameters interact in complex ways
   * Tiny numerical differences can grow over multiple steps, leading to different outputs.
   * There are often multiple valid paths through the neural network, each leading to a different response.
2. Optimization Trade-offs
   * Models balance speed and precision.
   * Memory management and resource allocation decisions can introduce variations in behavior.
### Evaluating Bias and Ethical Concerns in LLMs
#### Bias in Training Data
Large Language Models are trained on vast amounts of text from the internet, which inevitably contains biases present in human society. These biases can become embedded in the model, affecting the way it generates responses. For example, if the training data contains stereotypes or biased language, the model may unintentionally replicate these biases. This is why it's important to evaluate the ethical implications of using LLMs and to develop techniques to mitigate bias, such as fine-tuning models with curated datasets or incorporating fairness constraints during training.
#### Ethical Use and Mitigation Strategies
To address these concerns, researchers and developers are working on various mitigation strategies:
1. **Dataset Curation:** Carefully selecting and filtering training data to reduce exposure to biased or harmful content.
2. **Post-Training Adjustments:** Applying additional training steps or using human feedback to correct undesirable behaviors.
3. **Transparency and Explainability:** Developing methods to make LLMs' decision-

---
## How Large Language Models Work: A Simple Breakdown
At their core, Large Language Models (LLMs) are powered by deep learning and built on transformer architectures. But how do they actually process and generate human-like text?
1. **Data Collection & Preprocessing**:<br/>
LLMs are trained on massive datasets containing text from books, articles, research papers, and even code repositories. Before training, this raw text undergoes preprocessing, which includes:
    * **Tokenisation** – Breaking down text into smaller units (tokens) like words or subwords
    * **Cleaning & Normalisation** – Removing duplicates, fixing formatting, and ensuring consistent encoding
    * **Embedding Creation** – Converting text tokens into numerical representations for processing
2. **Training on Deep Neural Networks**:<br/>
Once the data is ready, the model undergoes self-supervised learning using a deep neural network with billions (or even trillions) of parameters. The key innovation behind LLMs is the Transformer architecture, which relies on:
    * **Self-Attention Mechanism** – Determines which words in a sentence are most relevant to each other, allowing the model to understand context and relationships.
    * **Positional Encoding** – Since Transformers process words in parallel rather than sequentially, they need a way to recognise word order for proper meaning.
    * **Multi-Layer Processing** – Each input token passes through multiple layers, refining its meaning at each stage before generating the output.
3. **Fine-Tuning for Specific Tasks**:<br/>
After pretraining, LLMs can be fine-tuned for specific applications, such as customer service, legal research, medical diagnostics, or code generation. Fine-tuning involves:
    * **Supervised Learning** – Training the model with labelled examples to guide its responses.
    * **Reinforcement Learning with Human Feedback (RLHF)** – Adjusting model responses based on human ratings to improve relevance, accuracy, and safety.
4. **Generating Responses: Prediction & Context Handling**<br/>
When a user inputs a prompt, the LLM doesn’t retrieve pre-written answers - it predicts the most likely next words based on learned patterns. The process involves:
      * **Context Awareness**: The model considers not just the last few words but entire passages to ensure coherence.
      * **Temperature & Top-k Sampling:** These settings control randomness - higher values make responses more creative, while lower values ensure precision.
      * **Memory & Long-Context Understanding:** Modern LLMs use techniques like Retrieval-Augmented Generation (RAG) or hierarchical memory to handle long conversations without forgetting earlier context.
5. **Continuous Learning & Improvements**
Although LLMs do not learn in real-time, they are periodically updated with new training data. Additionally, user interactions, feedback loops, and prompt engineering help refine their performance over time.
---
## Key Components of Large Language Models 
LLMs are comprised of: 
* **Embedding Layer:** Transforms input text into meaningful embeddings. 
* **Feedforward Layer (FFN):** Processes input embeddings for higher-level understanding. 
* **Recurrent Layer:** Analyzes word sequences to capture sentence relationships. 
* **Attention Mechanism:** Focuses on relevant parts of the input for accurate output generation. 

---
## Model Size (parameters) or capabilities of language models

---
## Transforming word vectors into word predictions
GPT(Genetive Pre-Trained Transformer) is organized into dozens of layers. Each layer of an LLM is a transformer taking a sequence of vectors as inputs—one vector for each word in the input text—and adds information to help clarify the meaning of that word and better predict which word might come next. Each layer of an LLM is a transformer.

---
## Applications of Large Language Models:
Large language models can be used for several purposes:
* **Natural Language Processing (NLP):** Tasks like sentiment analysis, entity recognition, and language translation are greatly enhanced by LLMs.
* **Research & Information retrieval:** Whenever you use their search feature in Bing or Google, you are relying on a large language model to produce information in response to a query. It's able to retrieve information, then summarize and communicate the answer in a conversational style.
* **Sentiment analysis:** As applications of natural language processing, large language models enable companies to analyze the sentiment of textual data.
* **Text/content generation:** Large language models are behind generative AI, like ChatGPT, and can generate text based on inputs. They can produce an example of text when prompted. LLMs can generate articles, reports, stories, and even poetry, assisting writers and creators. For example: "Write me a poem about palm trees in the style of Emily Dickinson."
* Text generation: language generation abilities, such as writing emails, blog posts or other mid-to-long form content in response to prompts that can be refined and polished. An excellent example is retrieval-augmented generation (RAG). 
* Content summarization: summarize long articles, news stories, research reports, corporate documentation and even customer history into thorough texts tailored in length to the output format.
* **Code generation:** Like text generation, code generation is an application of generative AI. LLMs understand patterns, which enables them to generate code.
* **Tech:** Large language models are used anywhere from enabling search engines to respond to queries, to assisting developers with writing code.
* **Chatbots and conversational AI:** Large language models enable customer service chatbots or conversational AI to engage with customers, interpret the meaning of their queries or responses, and offer responses in turn.
* ** Personalised Education & Learning:** Large language models are used anywhere from enabling search engines to respond to queries, to assisting developers with writing code.
* **Healthcare and Science:** Large language models have the ability to understand proteins, molecules, DNA, and RNA. This position allows LLMs to assist in the development of vaccines, finding cures for illnesses, and improving preventative care medicines. LLMs are also used as medical chatbots to perform patient intakes or basic diagnoses.
* **Customer Service:** LLMs are used across industries for customer service purposes such as chatbots or conversational AI.
Marketing: Marketing teams can use LLMs to perform sentiment analysis to quickly generate campaign ideas or text as pitching examples, and much more.
* **Legal:** From searching through massive textual datasets to generating legalese, large language models can assist lawyers, paralegals, and legal staff.
* **Banking:** LLMs can support credit card companies in detecting fraud.
* **Entertainment:** LLMs contribute to scriptwriting, game development, and interactive storytelling.
* **Language translation:** provides wider coverage to organizations across languages and geographies with fluent translations and multilingual capabilities.

---
## Popular Large Language Models (LLMs) & Their Types 
LLMs come in different types, each designed for specific capabilities and use cases. While some models are general-purpose, others are tailored for domains like coding, healthcare, or legal analysis.
* **GPT-4 / GPT-3.5 (OpenAI):** One of the most advanced LLMs, widely used for chatbots, content creation, and automation.
* **Claude 2 (Anthropic):** Known for its safer and more ethical AI approach, focusing on transparency and reduced bias.
* **Gemini (formerly Bard) (Google DeepMind):** Google’s response to GPT, tightly integrated with search and real-time web data.
* **Mistral 7B & Mixtral (Mistral AI):** Open-weight models optimised for efficiency, with a mixture-of-experts (MoE) approach.
### General-Purpose LLMs
These are the most widely known and used models, capable of handling a broad range of text-based tasks such as answering questions, summarising documents, and generating human-like text.

### Open-Source LLMs
Unlike proprietary models, these LLMs have **open weights**,  _allowing developers to customise and deploy them for specific applications_.
* **LLaMA 2 (Meta):** A powerful open-source LLM optimised for cost-effective deployment.
* **MPT (MosaicML):** Optimised for efficiency and available for commercial use without restrictions.
* **Falcon 180B (Technology Innovation Institute):** One of the largest open-source LLMs.
### Domain-Specific LLMs
These models are trained on specialised datasets for tasks in **medicine**, **law**, and **software development**.
* **Med-PaLM 2 (Google):** Tailored for medical applications, including diagnostics and research.
* **Code Llama & StarCoder (Meta & BigCode):** Built for coding tasks, capable of generating, debugging, and explaining code.
* **Bloom (BigScience):** A multilingual model trained in 46 languages, making it ideal for global applications.
* **LaMDA (Google):** Specifically optimized for dialogue-based interactions, enabling more natural and open-ended conversations.
### Multimodal LLMs (Text + Images + Video)
Unlike traditional LLMs, these models can process and _generate multiple types of data, such as images, videos, and audio, alongside text._
* **GPT-4V (OpenAI):** Extends GPT-4’s capabilities to visual understanding.
* **Gemini 1.5 (Google)**: Handles both text and image inputs, improving contextual understanding.
* **Flamingo (DeepMind):** Specialises in vision-language tasks, used in captioning and image analysis.
* **DALL·E (OpenAI):** Capable of generating images from textual descriptions, showcasing how LLMs can work with multimodal data.

## BERT
### What is BERT?
BERT, short for **Bidirectional Encoder Representations from Transformers**, is a transformer-based model introduced by Google AI Research. Unlike traditional models like LSTMs or RNNs, BERT uses a **bidirectional approach** to analyze sentences. This means it understands words in their full context by looking both forward and backward in a sentence simultaneously.

### Why is BERT So Powerful?
* **Contextual Understanding:** Unlike earlier models that processed text sequentially, BERT examines the entire sentence at once, capturing richer contextual information.
* **Transformer Architecture:** BERT is built on the transformer architecture, leveraging multi-headed attention mechanisms to understand relationships between words.
* **Pre-training on Massive Data:** BERT is pre-trained on vast corpora like Wikipedia, enabling it to generalize effectively to new tasks.

### The Transformer Architecture: Backbone of BERT
Transformers revolutionized NLP by introducing a mechanism to process words in parallel, rather than sequentially. The transformer architecture comprises:
* **Encoder:** Processes input text and generates encoded representations.
* **Decoder:** Typically used for tasks like translation, it generates output sequences.

### Key Component: Multi-Headed Attention
Attention mechanisms allow the model to focus on important words in a sentence. Multi-headed attention adds layers of complexity, enabling BERT to grasp nuanced dependencies like:
* **“France is a country. It is beautiful.”** (What does “it” refer to?)
* **“Love is all that matters.”** (How do “love” and “matters” connect?)
Pre-training BERT: How It Learns Language

    
```
>>> TAKE NOTE
* **PaLM:** Google's Pathways Language Model (PaLM) is a transformer language model capable of common-sense and arithmetic reasoning, joke explanation, code generation, and translation.
* **BERT:** The Bidirectional Encoder Representations from Transformers (BERT) language model was also developed at Google. It is a transformer-based model that can understand natural language and answer questions.
* **XLNet:** A permutation language model, XLNet generated output predictions in a random order, which distinguishes it from BERT. It assesses the pattern of tokens encoded and then predicts tokens in random order, instead of a sequential order.
* **GPT:** Generative pre-trained transformers are perhaps the best-known large language models. Developed by OpenAI, GPT is a popular foundational model whose numbered iterations are improvements on their predecessors (GPT-3, GPT-4, etc.). It can be fine-tuned to perform specific tasks downstream. Examples of this are EinsteinGPT, developed by Salesforce for CRM, and Bloomberg's BloombergGPT for finance.
```
## Challenges & Limitations of LLMs
Despite their impressive capabilities, LLMs are not perfect. Some key challenges include:
* **Hallucinations & Misinformation:** LLMs sometimes generate false or misleading information because they rely on probability rather than factual accuracy.
* **Bias in Training Data:** If an LLM is trained on biased data, it may produce biased outputs, reinforcing stereotypes.
* **High Computational Costs:** Training LLMs requires massive computational power, making them expensive to develop and maintain.
* **Data Privacy Concerns:** Using LLMs in sensitive industries (e.g., healthcare, finance) requires strict data protection measures.

---
## The Future of LLMs: What’s Next?
The next wave of LLM advancements will focus on:
* **Smaller, More Efficient Models:** Instead of training massive models, AI researchers are working on domain-specific, fine-tuned models that are cheaper and faster to deploy.
* **Retrieval-Augmented Generation (RAG):** Combining retrieval systems with generative AI to provide more accurate and context-aware responses.
**Multimodal AI:** Future LLMs will process not just text, but also images, videos, and even audio, making AI more versatile.
* **AI Agents & Autonomous Systems:** Moving beyond static responses, AI will autonomously complete tasks, acting as intelligent assistants.
## The Future of LLMs
the field is repidly evolving with exciting developments on the horizon. Here's what experts predict we'll see in the coming 

---
## Getting Started with LLMs
Want to start working with LLMs? Here's a simple example using the OpenAI API:
```py
import os
from openai import OpenAI
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

def initialize_openai_client():
    """Initialize the OpenAI client with API key."""
    return OpenAI(api_key=os.getenv('OPENAI_API_KEY'))

def generate_text(prompt, max_tokens=100):
    """
    Generate text using OpenAI's GPT model.
    
    Args:
        prompt (str): The input prompt for the model
        max_tokens (int): Maximum number of tokens to generate
        
    Returns:
        str: Generated text response
    """
    try:
        client = initialize_openai_client()
        response = client.chat.completions.create(
            model="gpt-3.5-turbo",
            messages=[
                {"role": "system", "content": "You are a helpful AI assistant."},
                {"role": "user", "content": prompt}
            ],
            max_tokens=max_tokens
        )
        return response.choices[0].message.content
    except Exception as e:
        return f"Error: {str(e)}"

def main():
    # Example prompts to demonstrate LLM capabilities
    prompts = [
        "Explain quantum computing in simple terms.",
        "Write a haiku about artificial intelligence.",
        "What are three tips for learning programming?"
    ]
    
    print("LLM Response Examples:\n")
    
    for prompt in prompts:
        print(f"📝 Prompt: {prompt}")
        response = generate_text(prompt)
        print(f"🔄 Response: {response}\n")
        print("-" * 50 + "\n")

if __name__ == "__main__":
    print("Make sure to set your OPENAI_API_KEY in .env file before running!")
    main()
```

---
## Running Models Locally
Some models can be downloaded and run on local mechines. Ollama is a good place to start experimenting. Note, howerver, that AI models require significant computational power. While a small model my run on a standard CPU, performance improves greatly with a **Graphics Processing Unit (GPU)**. For indestrial applications, specialized chipsets like **Neural Processing Units (NPUs)** are optimized for neural network workloads. Soon, we may see NPUs in lapops alongside CPUs and GPUs. Dedicated hardware can be costly, se many people opt for cloud services, which offer access to powerful AI models via APIs.

---
## Mathematics behind Large Lnaguage Models
### Linear regression is a statistical method used to model the relationship between a dependent variable and one or more independent variables. It aims to find a linear equation that best describes this relationship, allowing for predictions of th dependent variable based on the independent variables. Large Language Models (LLMs), on the other hand, are a type of ariticial intelligence model trained on massice amounts of text data, capable of understanding and generating human language. Recently, research has shown tha LLMs can also be used for regression tasks, including linear regression, by leveraging their ability to learn patterns.

---
## Reference
* [Tokens and Embeddings](https://medium.com/@piyushkashyap045/tokens-and-embeddings-5d65c7543dea)
* [Tokenization vs Embedding - How are they Different?](https://airbyte.com/data-engineering-resources/tokenization-vs-embeddings)
* [Tracing the thoughts of a large language model](https://www.anthropic.com/research/tracing-thoughts-language-model)
* [What does Generative Pre-trained Transformer (GPT) mean](https://medium.com/data-science-at-microsoft/how-large-language-models-work-91c362f5b78f)
* [Large Language Models Visualization](https://bbycroft.net/llm)
* [Generative AI for Beginners Microsoft -githublink](https://github.com/microsoft/generative-ai-for-beginners/tree/main?tab=readme-ov-file)
* [21 Lessons teaching everything you need to know to start building Generative AI applications](https://microsoft.github.io/generative-ai-for-beginners/#/?id=_21-lessons-teaching-everything-you-need-to-know-to-start-building-generative-ai-applications)
* [Mathematical Foundations of Large Language Models](https://medium.com/@kiplangatkorir/mathematical-foundations-of-large-language-models-541b196ccf84)
* [Introduction to LLMs](https://soict.hust.edu.vn/wp-content/uploads/Introduction-to-LLMs.pdf)
* [How Do Large Language Models Work?](https://www.simform.com/blog/how-do-llm-work/#:~:text=C.%20Ethical%20Implications%20and%20Potential%20Biases%20LLMs,is%20an%20important%20area%20of%20ongoing%20research.)
* [Foundations of Large Language Models](https://readwise-assets.s3.amazonaws.com/media/wisereads/articles/foundations-of-large-language-/2501.09223v1.pdf)
* [A Beginner’s Guide to Large Language Models](https://www.amax.com/content/files/2024/03/llm-ebook-part1-1.pdf)
* [The Large Language Model Course](https://towardsdatascience.com/the-large-language-model-course-b6663cd57ceb/)
* [Large Language Model Mathematics explained Through a Road Trip](https://medium.com/@thierry.damiba/large-language-model-mathematics-explained-through-a-road-trip-589215b1bbcf)
* [Understanding the Math Behind LLM Models and Fine-Tuning Them](https://medium.com/@anjalitanikella/understanding-the-math-behind-llm-models-and-fine-tuning-them-ee4ca222823f)
* [What are Large Language Models (LLMs)?](https://forage.ai/blog/what-are-large-language-models-llms/#:~:text=Feed%2DForward%20Layers:%20After%20attention%20mechanisms%2C%20LLMs%20use,model%20learn%20more%20intricate%20patterns%20in%20language.)
* [A Technical Guide to Getting Started with Gen AI and LLMs](https://medium.com/@isaakmwangi2018/a-technical-guide-to-getting-started-with-gen-ai-and-llms-d70b7f3fd71e)
* [Key Takeaways & Insights From Andrej Karpathy's Deep Dive into LLMs](https://www.linkedin.com/pulse/key-takeaways-insights-from-andrej-karpathys-deep-dive-ayan-basu-adkgc#:~:text=Step%202:%20Tokenization:%20Before%20the%20model%20can,of%20tokens%20rather%20than%20characters%20or%20words.)
* [Understanding LLMs from Scratch Using Middle School Math](https://medium.com/data-science/understanding-llms-from-scratch-using-middle-school-math-e602d27ec876)
* [How an LLM Understands Input: The Math Under the Hood](https://medium.com/@amallya0523/how-an-llm-understands-input-the-math-under-the-hood-114ac69f96c6)
* [Detailed Maths Topics and Their Direct Use In Machine Learning](https://medium.com/enjoy-algorithm/detailed-maths-topics-in-machine-learning-ca55cd537709#:~:text=Linear%20Algebra%20is%20the%20most,Forest%2C%20or%20any%20other%20algorithm.)
* [Mastering Large Language Models (LLMs): The Essential Study Guide](https://generativeailab.org/l/large-language-models/mastering-large-language-models-llms-the-essential-study-guide/897/#:~:text=For%20example%2C%20the%20distance%20between%20the%20vector,them%20to%20understand%20and%20generate%20human%2Dlike%20text.)
* [Understanding the Math Behind Large Language Models (LLMs)](https://tharunaithink.medium.com/understanding-the-math-behind-large-language-models-llms-ec90e2d84ace)
* [Understanding the Math Behind LLM Models and Fine-Tuning Them](https://medium.com/@anjalitanikella/understanding-the-math-behind-llm-models-and-fine-tuning-them-ee4ca222823f)
* [NLP Tutorials](https://github.com/tsmatz/nlp-tutorials/tree/master)
* [Deep Learning in Information Retrieval. Part I: Introduction and Sparse Retrieval](https://medium.com/itnext/deep-learning-in-information-retrieval-part-i-introduction-and-sparse-retrieval-12de0423a0b9)
* [A Friendly Introduction to Large Language Models (LLMs)](https://mlfrontiers.substack.com/p/a-friendly-introduction-to-large)
* [LLM Basics: Embedding Spaces - Transformer Token Vectors Are Not Points in Space](https://www.lesswrong.com/posts/pHPmMGEMYefk9jLeh/llm-basics-embedding-spaces-transformer-token-vectors-are)
* [Understanding LLM GAN and Transformers](https://dasarpai.com/dsblog/understanding-llm-gan-and-transformers)
* [AI For Developers: How Transformer LLMs Work](https://dev.to/valyouw/ai-for-developers-how-transformer-llms-work-2b6h)
* [Tokenization](https://docs.mistral.ai/guides/tokenization/)
* [A Beginner’s Guide to Vector Embeddings](https://www.singlestore.com/blog/beginner-guide-to-vector-embeddings/)
* [Binary Vectors vs. Dense Vectors vs. Sparse Vectors: A Comparative Analysis ](https://datamagiclab.com/binary-vectors-vs-dense-vectors-vs-sparse-vectors-a-comparative-analysis/)
* [Vector Embeddings](https://www.kommunicate.io/blog/vector-embeddings/)
* [The Basics of AI-Powered (Vector) Search](https://cameronrwolfe.substack.com/p/the-basics-of-ai-powered-vector-search)
* [How Transformer LLMs Work: A Deep Dive into Their Architecture and Evolution](https://medium.com/@tharika082003/how-transformer-llms-work-a-deep-dive-into-their-architecture-and-evolution-5a493473833c)
* [Elastic - Large Language Models](https://www.elastic.co/what-is/large-language-models)
* [Dynamic Code Block](https://timwappat.info/author/timwappat/)
* [Understanding Large Language Models (LLMs): The Brains Behind Generative AI](https://www.linkedin.com/pulse/understanding-large-language-models-xgesf/)
* [How to Use LLM for Regression: A Complete Guide](https://symufolk.com/how-to-use-llm-for-regression/)
* [Linear Regression in Machine Learning](https://www.analyticsvidhya.com/blog/2021/10/everything-you-need-to-know-about-linear-regression/)
* [What is a large language model?](https://www.sap.com/resources/what-is-large-language-model#:~:text=Large%20language%20model%20definition%20In%20the%20realm,being%20trained%20on%20massive%20amounts%20of%20text.)
* [How to use LLMs for Regression: A Guide to In-Context Learning]([https://blog.promptlayer.com/how-to-use-llms-for-regression-a-guide-to-in-context-learning-2/#:~:text=you%20may%20be%20better%20off,this%20route%20is%20so%20appealing.](https://blog.promptlayer.com/how-to-use-llms-for-regression-a-guide-to-in-context-learning-2/#:~:text=you%20may%20be%20better%20off,this%20route%20is%20so%20appealing.))
* [Linear Regression in Machine learning](https://www.appliedaicourse.com/blog/linear-regression-in-machine-learning/#:~:text=Predicting%20House%20Prices:%20A%20real%20estate%20company,its%20size%2C%20number%20of%20bedrooms%2C%20and%20location.)
* [Large language models, explained with a minimum of math and jargon](https://www.understandingai.org/p/large-language-models-explained-with)
* [Large Language Models as Data Compression Engines](https://www.linkedin.com/pulse/large-language-models-data-compression-engines-prof-ahmed-banafa)
* [Encoder vs. Decoder: Understanding the Two Halves of Transformer Architecture](https://www.linkedin.com/pulse/encoder-vs-decoder-understanding-two-halves-transformer-anshuman-jha-bkawc)
* [How Transformer Models Generate Images from Text](https://www.linkedin.com/pulse/how-transformer-models-generate-images-from-text-santosh-kumar-az2oc)
* [Understanding the Core Components of LLMs: Vectors, Tokens, and Embeddings Explained](https://www.linkedin.com/pulse/understanding-core-components-llms-vectors-tokens-embeddings-jain-dlv6e)
* [BERT for Entity Embeddings](https://medium.com/@piyushkashyap045/bert-for-entity-embeddings-61fefa23d194)
