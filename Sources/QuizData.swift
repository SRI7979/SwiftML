//
//  QuizData.swift
//  SwiftML
//
//  Created by Sri Challa on 2/23/26.
//


import Foundation

struct QuizQuestion: Identifiable {
    let id = UUID()
    let question: String
    let options: [String]
    let correctIndex: Int
    let explanation: String
}

struct Quiz {
    let title: String
    let questions: [QuizQuestion]
}

struct QuizProvider {
    static let quizzes: [Int: Quiz] = [
        1: Quiz(
            title: "Python Fundamentals Quiz",
            questions: [
                QuizQuestion(
                    question: "What is a variable?",
                    options: [
                        "A loop that repeats code",
                        "A name that stores a value",
                        "A type of error",
                        "A mathematical function"
                    ],
                    correctIndex: 1,
                    explanation: "A variable is a label for a value, like score = 5. It lets the computer remember and reuse information."
                ),
                QuizQuestion(
                    question: "Which one is a string?",
                    options: [
                        "42",
                        "\"Hello\"",
                        "3.14",
                        "True"
                    ],
                    correctIndex: 1,
                    explanation: "Strings are text inside quotation marks. Without quotes, Python thinks it's something else."
                ),
                QuizQuestion(
                    question: "What does a conditional (if/else) allow a program to do?",
                    options: [
                        "Store multiple values",
                        "React differently based on data",
                        "Repeat actions automatically",
                        "Calculate averages"
                    ],
                    correctIndex: 1,
                    explanation: "Conditionals let programs make decisions and choose different paths based on whether something is true or false."
                ),
                QuizQuestion(
                    question: "What is the purpose of a loop?",
                    options: [
                        "To store information",
                        "To repeat actions automatically",
                        "To make decisions",
                        "To delete data"
                    ],
                    correctIndex: 1,
                    explanation: "Loops let programs repeat actions many times without writing the same code over and over. They're essential for processing large amounts of data."
                ),
                QuizQuestion(
                    question: "What is a function?",
                    options: [
                        "A type of variable",
                        "A reusable block of code that performs a specific task",
                        "A way to store lists",
                        "A comparison operator"
                    ],
                    correctIndex: 1,
                    explanation: "Functions are named blocks of code that can be reused. They take input, process it, and often return output - just like mini-machines."
                ),
                QuizQuestion(
                    question: "What does data processing involve?",
                    options: [
                        "Only storing data",
                        "Analyzing data to find totals, averages, and patterns",
                        "Deleting old files",
                        "Creating variables"
                    ],
                    correctIndex: 1,
                    explanation: "Data processing means doing something useful with data - calculating totals, finding averages, counting patterns. This is where data becomes meaningful."
                ),
                QuizQuestion(
                    question: "What is a list in Python?",
                    options: [
                        "A single number",
                        "Multiple values stored in square brackets",
                        "A text string",
                        "A conditional statement"
                    ],
                    correctIndex: 1,
                    explanation: "A list stores multiple values like [90, 85, 88, 92]. This is important because real data almost always comes in groups."
                ),
                QuizQuestion(
                    question: "How does iteration work in a loop?",
                    options: [
                        "It processes all items at once",
                        "It goes through items one at a time",
                        "It only processes the first item",
                        "It randomly selects items"
                    ],
                    correctIndex: 1,
                    explanation: "Iteration means going through items one by one. The loop takes the first item, does the action, then moves to the next."
                )
            ]
        ),
        
        2: Quiz(
            title: "Math Foundations Quiz",
            questions: [
                QuizQuestion(
                    question: "What is an average (mean)?",
                    options: [
                        "The highest value in a dataset",
                        "A summary that shows the typical value",
                        "The total of all numbers",
                        "The difference between values"
                    ],
                    correctIndex: 1,
                    explanation: "An average compresses many numbers into one meaningful summary by adding all values and dividing by how many there are."
                ),
                QuizQuestion(
                    question: "Why do we divide when calculating an average?",
                    options: [
                        "To make the number smaller",
                        "To adjust for the size of the group",
                        "To find the total",
                        "To count the items"
                    ],
                    correctIndex: 1,
                    explanation: "Dividing keeps things fair. Four students with a total of 345 is different from 40 students with the same total. Dividing adjusts for size."
                ),
                QuizQuestion(
                    question: "What do graphs help us see?",
                    options: [
                        "Only individual numbers",
                        "Patterns and relationships in data",
                        "Programming code",
                        "Error messages"
                    ],
                    correctIndex: 1,
                    explanation: "Graphs turn numbers into pictures, making patterns visible. They show relationships between input and output."
                ),
                QuizQuestion(
                    question: "In a graph, what does a positive trend show?",
                    options: [
                        "Values decrease as you move right",
                        "Values increase as you move right",
                        "Values stay the same",
                        "There is no relationship"
                    ],
                    correctIndex: 1,
                    explanation: "A positive trend means as one value increases, the other also increases - like more study hours leading to higher scores."
                ),
                QuizQuestion(
                    question: "What is a function in math?",
                    options: [
                        "A random number generator",
                        "A rule that takes input and produces exactly one output",
                        "A list of numbers",
                        "A type of graph"
                    ],
                    correctIndex: 1,
                    explanation: "A function is a consistent rule: same input always gives same output. This predictability makes functions useful."
                ),
                QuizQuestion(
                    question: "What does error measure?",
                    options: [
                        "How fast the program runs",
                        "The difference between prediction and actual value",
                        "The amount of data",
                        "The size of the model"
                    ],
                    correctIndex: 1,
                    explanation: "Error is the difference between what was predicted and what actually happened. It tells us how far off we are."
                ),
                QuizQuestion(
                    question: "Why is error important in machine learning?",
                    options: [
                        "It shows the program has failed",
                        "It provides feedback to improve the model",
                        "It slows down training",
                        "It deletes bad data"
                    ],
                    correctIndex: 1,
                    explanation: "Error is not failure - it's information. Models use error to adjust and improve through the predict → error → adjust cycle."
                ),
                QuizQuestion(
                    question: "What does 'fitting a line' to data mean?",
                    options: [
                        "Making all points touch the line exactly",
                        "Drawing a line that captures the overall pattern",
                        "Connecting every point with straight segments",
                        "Removing points that don't fit"
                    ],
                    correctIndex: 1,
                    explanation: "Fitting a line means finding one that best represents the general trend, even if it doesn't hit every point exactly. It captures the overall pattern."
                ),
                QuizQuestion(
                    question: "Why doesn't a fitted line pass through every data point?",
                    options: [
                        "The line is drawn incorrectly",
                        "Real-world data is messy, and the line balances all errors",
                        "Not enough data points",
                        "The model is broken"
                    ],
                    correctIndex: 1,
                    explanation: "Real-world data has variation and noise. The line stays as close as possible to all points overall, balancing the errors."
                )
            ]
        ),
        
        3: Quiz(
            title: "Machine Learning Concepts Quiz",
            questions: [
                QuizQuestion(
                    question: "What is a machine learning model?",
                    options: [
                        "A database that stores information",
                        "A system that learns patterns from data to make predictions",
                        "A programming language",
                        "A type of computer hardware"
                    ],
                    correctIndex: 1,
                    explanation: "A model is a system that takes input and produces predictions by learning patterns from past data. It's like a rule that was learned, not written by hand."
                ),
                QuizQuestion(
                    question: "What is the guess → error → adjust cycle?",
                    options: [
                        "A way to delete bad data",
                        "The repeated process of making predictions, measuring error, and improving",
                        "A type of loop in programming",
                        "A method for storing information"
                    ],
                    correctIndex: 1,
                    explanation: "Models learn by guessing, comparing to the real answer, measuring error, and adjusting. This cycle repeats thousands of times to improve predictions."
                ),
                QuizQuestion(
                    question: "What is training data?",
                    options: [
                        "Data used to test the final model",
                        "Data the model learns from during training",
                        "Data that is deleted after use",
                        "Random data with no labels"
                    ],
                    correctIndex: 1,
                    explanation: "Training data is what the model learns from. It sees inputs and correct answers, adjusting its internal rule based on errors."
                ),
                QuizQuestion(
                    question: "Why do we need separate testing data?",
                    options: [
                        "To train the model faster",
                        "To prove the model works on new, unseen data",
                        "To make the model more complex",
                        "To store extra information"
                    ],
                    correctIndex: 1,
                    explanation: "Testing on new data proves the model truly learned patterns rather than just memorizing. It shows whether the model can handle unfamiliar situations."
                ),
                QuizQuestion(
                    question: "What is overfitting?",
                    options: [
                        "When a model is too simple",
                        "When a model memorizes training data too perfectly and fails on new data",
                        "When there's too much data",
                        "When training takes too long"
                    ],
                    correctIndex: 1,
                    explanation: "Overfitting happens when a model learns training data too perfectly, memorizing details and noise instead of learning the overall pattern."
                ),
                QuizQuestion(
                    question: "What is generalization?",
                    options: [
                        "Making the model bigger",
                        "The ability to perform well on new, unseen data",
                        "Memorizing all training examples",
                        "Using more complex models"
                    ],
                    correctIndex: 1,
                    explanation: "Generalization means learning the overall trend so the model performs well on new data. It's understanding, not memorizing."
                ),
                QuizQuestion(
                    question: "What is supervised learning?",
                    options: [
                        "Learning without any data",
                        "Learning from labeled data with correct answers",
                        "Learning that happens automatically",
                        "Learning from unlabeled data"
                    ],
                    correctIndex: 1,
                    explanation: "Supervised learning uses labeled data where each input has a correct output. The labels act like a teacher, providing direction."
                ),
                QuizQuestion(
                    question: "What's the difference between classification and regression?",
                    options: [
                        "They are the same thing",
                        "Classification predicts categories, regression predicts numbers",
                        "Classification is faster than regression",
                        "Regression uses more data"
                    ],
                    correctIndex: 1,
                    explanation: "Classification predicts categories (spam/not spam), while regression predicts continuous numbers (house prices). Different outputs, same learning structure."
                ),
                QuizQuestion(
                    question: "How do neural networks learn?",
                    options: [
                        "By storing all examples in memory",
                        "By adjusting weights through the predict → error → adjust cycle",
                        "By reading code instructions",
                        "By randomly trying different patterns"
                    ],
                    correctIndex: 1,
                    explanation: "Neural networks have weights that control connections. During training, weights adjust based on error to reduce mistakes over time."
                ),
                QuizQuestion(
                    question: "What makes neural networks powerful?",
                    options: [
                        "They work instantly",
                        "They use layers to learn complex patterns step by step",
                        "They never make mistakes",
                        "They don't need training data"
                    ],
                    correctIndex: 1,
                    explanation: "Neural networks use layers where each learns different features. Early layers learn simple patterns, later layers combine them into complex understanding."
                )
            ]
        )
    ]
}






