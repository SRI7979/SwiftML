//
//  Lessons.swift
//  SwiftML
//
//  Created by Sri Challa on 2/10/26.
//                  ||
//how to add images \/
//"IMG:linear_regression"

import Foundation

struct Lesson {
    let title: String
    let content: [String]
}

struct LessonProvider {
    static let data: [Int: Lesson] = [
        1: Lesson(
            title: "Introduction to Python 🐍",
            content: [
                "IMG:python_pic",
                """
                1️⃣ What is Python???
                
                Python is a programming language.
                A programming language is how we give instructions to a computer.
                Instead of clicking buttons, we write commands.
                The computer reads them from top to bottom and follows them exactly.
                
                Python is popular because it’s simple to read and powerful enough to build real things — apps, games, websites, and even machine learning systems.
                
                In this section, you won’t memorize random rules.
                You’ll learn how to make the computer store information.
                And your Python journey will begin with Data Types
                """,
                
                "--------------------------------------------------",
                
                """
                2️⃣ So… what even is a variable???
                A variable is just a name that holds a value.
                It’s like putting a label on a container so you know what’s inside.
                Instead of remembering “5,” the computer remembers something like score = 5.
                Now whenever we say score, Python knows we mean 5.
                """,
                
                "IMG:variable_datatype",
                
                "--------------------------------------------------",
                
                """
                Alright thats cool, but why do we need these????
                Programs don’t just use one number.
                They store ages, names, prices, measurements, predictions — sometimes thousands of values.
                Variables let us reuse information without rewriting it every time.
                If you change the value once, everything updates automatically.
                """,
                
                "--------------------------------------------------",
                
                """
                Numbers
                Python can store numbers like:
                10
                
                42
                
                3.14
                
                Whole numbers are called integers (ints).
                Numbers with decimals are called floats.
                If it involves counting, measuring, or calculating, it’s probably a number.
                """,
                
                "IMG:int_image",
                
                "--------------------------------------------------",
                
                """
                Text (Strings)
                Text is called a string.
                Strings are always inside quotation marks.
                Examples:
                
                "Hello"
                
                "Python"
                
                "Age"
                
                If you forget the quotation marks, Python thinks it’s something else.
                If it’s words, it needs quotes.
                """,
                
                "IMG:string_image1",
                
                "--------------------------------------------------",
               
                """
                Booleans
                Booleans are quite simple. They can only be represented by two values, 
                Examples:
                
                "true/false"
                
                "1/0"
                
                "yes/no"
                
                Basically Booleans are just can be used when the possible values are yes or no, true or false, etc.
                Examples of where Booleans could be used is to see if a number is odd or even,
                if its odd you can return true, if its even you can return false.
                """,
                
                "IMG:boolean_image",
                
                "--------------------------------------------------",
                
                """
                3️⃣ Executing our first line of code!!!
                One of the most basic functions in Python and most languages is the print statement

                The print() command tells Python to display something on the screen.

                If you write:

                print(5)


                The output will be:

                5

                If you write:

                print("Hi")


                The output will be:

                Hi

                print() is how we see results.
                It’s like asking the computer to speak.
                """,
                
                """
                4️⃣ Printing your age!!!
                
                Now with all of the knowledge we have accquired in this lesson, we can make a simple bit of code that prints
                out your age
                
                We instantiate the age and name, then print out the name and age:
                
                age = 14
                name = "Sri Challa "
                print(name + age)
                
                But this will throw me an error, because age is an integer and name is a String,
                to fix this we can convert age to a string with the str() function
                
                The final code will look like this:
                
                age = 14
                name = "Sri Challa"
                print(name + str(age))
                
                Now this code will print: "Sri Challa 14"
                """
            ]
        ),
        2: Lesson(
            title: "Conditionals",
            content: [
                """
                Why Programs Need Decisions
                
                So far, Python can store information.
                
                But storing information isn’t enough.
                
                Real programs need to react.
                
                If a password is correct → allow access.
                If a temperature is too high → turn on cooling.
                If a score is above 90 → display “A”.
                
                For a program to react differently in different situations, it needs conditionals.
                
                Image to place here:
                A simple forked path diagram:
                Condition → Yes → Action A
                Condition → No → Action B
                """,
                
                "IMG:conditional_statementT2",
                
                "--------------------------------------------------",
                
                """
                What a Conditional Is
                A conditional lets a program ask a question.
                If the answer is true, it does one thing.
                 If the answer is false, it does something else.
                In Python, this is written using if and else.
                Example:
                if score > 90:
                    print("A")
                else:
                    print("Keep trying")
                
                The program checks the condition first.
                Then it chooses a path.
                Image to place here:
                 A decision diamond shape labeled:
                 score > 90?
                 Arrow left: Yes → "A"
                 Arrow right: No → "Keep trying"
                """,
                
                "IMG:2conditional_statementT2",
                
                "--------------------------------------------------",
                
                """
                True and False
                
                Every conditional is based on something being either true or false.
                
                For example:
                
                5 > 3 → True
                
                2 > 10 → False
                
                The computer evaluates the statement.
                
                It doesn’t guess.
                It checks logically.
                
                Common comparison symbols:
                
                > greater than
                
                < less than
                
                == equal to
                
                != not equal to
                
                These comparisons create decisions.
                
                Image to place here:
                A clean comparison chart:
                5 > 3 → True
                2 == 2 → True
                4 < 1 → False
                
                Minimal design.
                """,
                
                "IMG:comparing_operatorsT2",
                
                "--------------------------------------------------",
                
                """
                Why Order Matters
                
                The program always checks the condition first.
                
                If it’s true, it runs that block and skips the rest.
                
                If it’s false, it moves to the next option.
                
                Only one path runs.
                
                This is important.
                
                Programs don’t partially choose.
                They commit to one branch.
                
                Image to place here:
                A flow diagram:
                Start → Check Condition → (True branch OR False branch) → End
                
                Highlight that only one branch is active.
                """,
                
                "IMG:flow_diagramT2",
                
                "--------------------------------------------------",
                
                """
                Real-World Example
                
                Imagine a fitness app.
                
                It stores:
                
                steps = 8000
                
                
                The goal is 10,000 steps.
                
                The program checks:
                
                Is steps greater than or equal to 10000?
                
                If yes → show “Goal Reached!”
                If no → show “Keep Moving!”
                
                The program doesn’t “understand” fitness.
                
                It simply checks a condition and reacts.
                
                That’s all decision-making in code really is.
                
                Image to place here:
                A phone screen mockup:
                Top: steps = 8000
                Below: “Keep Moving!”
                And another version with 12000 → “Goal Reached!”
                """,
                
                "IMG:workout_appT2"
                
            ]
        ),
        3: Lesson(
            title: "Loops",
            content: [
                """
                Why Repetition Matters
                Imagine you had a list of 1,000 numbers.
                Would you check each one manually?
                That’s slow and inefficient.
                Programs are powerful because they can repeat actions automatically.
                That’s what loops are for.
                
                Image to place here:
                A visual showing a human checking boxes one by one vs a computer auto-checking many instantly.
                """,
                
                "--------------------------------------------------",

                """
                What a Loop Is
                A loop tells the computer:
                “Repeat this action multiple times.”
                Instead of writing the same instruction over and over, we let the program cycle through it.
                In Python, one common loop is the for loop.
                
                Example:
                
                numbers = [1, 2, 3, 4]
                for number in numbers:
                    print(number)
                
                The loop goes through each item in the list, one at a time.
                
                It repeats the print action for every value.
                
                Image to place here:
                A row of boxes:
                1 → 2 → 3 → 4
                With an arrow looping over each one.
                """,
                
                "--------------------------------------------------",

                """
                How Loops Move Through Lists
                
                When a loop runs, it doesn’t grab everything at once.
                
                It processes one item at a time.
                
                Step 1: Take the first number
                Step 2: Do the action
                Step 3: Move to the next number
                Repeat until the list is finished
                
                This is called iteration.
                
                Iteration means going through items one by one.
                
                Image to place here:
                A step-by-step flow:
                List → Item 1 → Action
                → Item 2 → Action
                → Item 3 → Action
                """,
                
                "--------------------------------------------------",

                
                """
                Why This Is Powerful
                
                Loops let programs handle large amounts of data.
                
                If you had test scores for 10 students or 10,000 students, the same loop would work.
                
                The size of the data doesn’t matter.
                
                The loop keeps going until it reaches the end.
                
                This is one reason computers scale so well.
                
                Image to place here:
                Two lists side by side:
                Small list (4 items)
                Large list (many items)
                Both processed by the same loop arrow.
                """,
                
                "--------------------------------------------------",

       
                """
                Real-World Example
                
                Imagine you have a list of daily steps:
                
                steps = [4000, 8000, 12000, 3000]
                
                
                You want to see which days reached 10,000 steps.
                
                A loop can check each day one by one.
                
                For each value:
                If steps ≥ 10000 → mark as goal reached.
                
                Instead of writing four separate checks, one loop handles everything.
                
                Now imagine 365 days.
                
                Still one loop.
                
                That’s efficiency.
                
                Image to place here:
                A list of step counts with a checkmark next to 12000 and blank next to the others.
                """,
                
                "--------------------------------------------------",

       
                """
                Why This Matters
                
                Machine learning works by repeating calculations thousands or even millions of times.
                
                Training a model is just structured repetition.
                
                Loops are the foundation of that repetition.
                
                Without loops, programs would only handle tiny amounts of data.
                
                With loops, they scale.
                
                This is the bridge between simple scripts and powerful systems.
                
                Image to place here:
                A circular arrow diagram labeled:
                Data → Process → Adjust → Repeat
                
                (Subtle preview of ML training loop)
                """
            ]
        ),
        
        4: Lesson(
            title: "Functions",
            content: [
                """
                Why We Need Functions

                Imagine copying the same block of code ten times.

                If you need to change it, you now have to edit it in ten places.

                That’s inefficient.

                Functions solve this problem.

                They let us package instructions into a reusable system.

                Image to place here:
                A messy screen with repeated code blocks vs one clean block labeled “function()”.
                """,
                
                "--------------------------------------------------",

       
                """
                What a Function Is

                A function is a named block of code that performs a specific task.

                You define it once.

                Then you can use it whenever you need it.

                Example:

                def greet():
                    print("Hello!")


                This creates a function called greet.

                When the program runs greet(), it prints “Hello!”.

                The function acts like a tool you can use again and again.

                Image to place here:
                A box labeled “greet()” with an arrow pointing to “Hello!” output.
                """,
                
                "--------------------------------------------------",

       
                """
                Functions With Input

                Functions become more powerful when they accept input.

                Example:

                def greet(name):
                    print("Hello " + name)


                Now the function doesn’t just say “Hello”.

                It says hello to whoever you give it.

                If you pass in "Jordan", the output becomes:

                Hello Jordan

                The input changes the result.

                Image to place here:
                Input: "Jordan" → greet() → Output: "Hello Jordan"
                """,
                
                "--------------------------------------------------",

       
                """
                Functions That Return Values

                Some functions don’t just print things.

                They calculate and return results.

                Example:

                def double(number):
                    return number * 2


                If you give it 5, it returns 10.

                The function takes input, processes it, and produces output.

                That’s a system.

                Image to place here:
                Input: 5 → double() → Output: 10
                Styled like a small machine.
                """,
                
                "--------------------------------------------------",

       
                """
                Why This Matters

                A function is basically an input → output machine.

                You give it something.
                It processes it.
                It gives you something back.

                This idea is extremely important.

                Because later, when we talk about machine learning models, they work the same way.

                Input data → Model → Prediction

                A model is just a very advanced function.

                Understanding functions means understanding the structure behind intelligent systems.

                Image to place here:
                A clean diagram:
                Input → Function → Output
                Below it, a subtle second line:
                Input → Model → Prediction
                """
            ]
        ),
        
        5: Lesson(
            title: "Data Processing",
            content: [
                """
                Why Data Processing Matters

                Storing data is useful.

                But the real power comes from doing something with it.

                Programs don’t just hold information — they analyze it.

                They calculate totals.
                They find averages.
                They count patterns.

                That’s data processing.

                Image to place here:
                A raw list of numbers on the left → arrow → summarized result on the right (like “Average: 88”).
                """,
                
                "--------------------------------------------------",

       
                """
                Working With a List of Data

                Imagine we have a list of test scores:

                scores = [85, 90, 78, 92]


                This is raw data.

                By itself, it’s just numbers.

                But we can process it to learn something useful.

                For example:

                What’s the total score?

                What’s the average?

                How many scores are above 90?

                Data becomes meaningful when we analyze it.

                Image to place here:
                Boxes labeled 85 | 90 | 78 | 92
                With arrows pointing to labels like “Total”, “Average”, “Count”.
                """,
                
                "--------------------------------------------------",

       
                """
                Finding a Total

                To find a total, we add all the numbers together.

                A program would:

                Start at 0

                Add each number in the list

                Keep updating the total

                At the end, we get the sum.

                This is how calculators work behind the scenes.

                Image to place here:
                A running total visual:
                Start: 0
                +85 → 85
                +90 → 175
                +78 → 253
                +92 → 345
                """,
                
                "--------------------------------------------------",

       
                """
                Finding an Average

                An average tells us the “typical” value.

                To calculate it:

                1: Add all the numbers
                2: Divide by how many numbers there are

                If the total is 345 and there are 4 scores:

                345 ÷ 4 = 86.25

                Now we understand the overall performance.

                Summaries turn raw data into insight.

                Image to place here:
                Total 345 ÷ 4 = 86.25
                With the label “Average Score”.
                """,
                
                "--------------------------------------------------",
       
                """
                Counting Patterns

                Sometimes we want to count how many values meet a condition.

                For example:
                How many scores are above 90?

                The program checks each number and keeps count.

                This combines:

                Lists

                Conditionals

                Loops

                Everything you’ve learned so far.

                Image to place here:
                Scores list with 92 highlighted
                Label: “Count = 1”
                """,
                
                "--------------------------------------------------",

                """
                Why This Matters

                Machine learning systems don’t just store data.

                They process it.

                They calculate errors.
                They compute averages.
                They analyze patterns repeatedly.

                What you just learned is the foundation of that process.

                Data → Process → Insight

                That’s the core of modern computing.

                Image to place here:
                Flow diagram:
                Data → Processing → Pattern → Decision
                """
            ]
        ),
    ]
}
