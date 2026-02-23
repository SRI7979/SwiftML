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
                
                "--------------------------------------------------",

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
                
                "IMG:1T3",
                
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
                
                "IMG:2T3",
                
                
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
                
                
                "IMG:3T3",
                
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
                
                
                "IMG:4T3",
                
                
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
                
                
                "IMG:5T3",
                
                
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
                """,
                
                
                "IMG:6T3"
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
                
                "IMG:1T4",
                
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
                
                "IMG:2T4",
                
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
                
                "IMG:3T4",
                
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
                
                "IMG:4T4",
                
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
                """,
                
                "IMG:5T4"
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
                
                "IMG:1T5",
                
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
                
                "IMG:2T5",
                
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
                
                "IMG:3T5",
                
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
                
                "IMG:4T5",
                
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
                
                "IMG:5T5",
                
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
                """,
                
                "IMG:6T5"
            ]
        ),
        
        6: Lesson(
            title: "Averages & Why We Summarize Data",
            content: [
                """
                Why We Need Averages
                Imagine looking at 100 test scores.
                Just a long list of numbers.
                That’s overwhelming.
                Instead of staring at every number, we summarize.
                An average gives us one number that represents the overall trend.
                Image to place here:
                 A messy vertical list of many numbers on the left → arrow → one clean box labeled “Average: 86”
                """,
                
                "IMG:1T6",
                
                "--------------------------------------------------",

                """
                What an Average Is
                An average (also called the mean) is a way to describe what’s typical.
                To calculate it:
                 Add all the values together.
                 Divide by how many values there are.
                That’s it.
                It compresses many numbers into one meaningful summary.
                Image to place here:
                 A simple visual:
                 85 + 90 + 78 + 92 = 345
                 345 ÷ 4 = 86.25
                 Label: “Average”
                """,
                
                "IMG:2T6",
                
                "--------------------------------------------------",

                """
                Why Dividing Matters
                If you only add numbers, bigger groups always look larger.
                Dividing adjusts for size.
                Four students with scores totaling 345 is different from 40 students totaling 345.
                Dividing keeps things fair.
                It answers:
                 “What’s the typical value per item?”
                Image to place here:
                 Two groups:
                 Group A: 4 numbers → Average 86
                 Group B: 40 numbers → Same total but much lower average
                 Clean comparison layout.
                """,
                
                "IMG:3T6",
                
                "--------------------------------------------------",

                """
                What Averages Actually Tell Us
                An average doesn’t tell you everything.
                It doesn’t show:
                 The highest score.
                 The lowest score.
                 How spread out the data is.
                But it gives a quick sense of direction.
                Above 90 average? Strong performance.
                 Around 60 average? Needs improvement.
                It’s a summary, not the full story.
                Image to place here:
                 A small graph with dots scattered between 70–100
                 A horizontal line labeled “Average = 86”
                """,
                
                "IMG:4T6",
                
                "--------------------------------------------------",

                """
                Real-World Example
                Imagine a fitness tracker app.
                Here are daily steps for a week:
                [4000, 8000, 12000, 3000, 9000, 10000, 7000]
                Looking at that list is hard.
                But if we calculate the average:
                Total steps ÷ 7 = average daily steps
                Now we know the typical activity level.
                Even if one day was very high (12000), the average balances it out.
                That’s why apps summarize your data instead of showing endless lists.
                Image to place here:
                 Bracketed list labeled “Weekly Steps”
                 Arrow pointing to a box labeled “Average Steps Per Day”
                """,
                
                "IMG:5T6",
                
                "--------------------------------------------------",

                """
                Why This Matters for Machine Learning
                Machine learning models constantly summarize data.
                They calculate:
                 Average error.
                 Average loss.
                 Average prediction.
                They use averages to measure performance.
                If you understand why we summarize data,
                 you understand how models measure progress.
                Data → Summary → Insight
                That’s the beginning of intelligent systems.
                Image to place here:
                 Flow diagram:
                 Data → Calculate Average → Performance Insight
                """,
                
                "IMG:6T6"
            ]
        ),
        
        7: Lesson(
            title: "Graphs & Relationships",
            content: [
                """
                Why We Use Graphs
                Looking at raw numbers makes patterns hard to see.
                But when we plot data on a graph, patterns become visible.
                Graphs turn numbers into pictures.
                And pictures reveal trends faster than lists ever could.
                Image to place here:
                 A vertical list of numbers on the left → arrow → simple line graph on the right.
                """,
                
                "IMG:1T7",

                "--------------------------------------------------",

                """
                Understanding the Axes
                A graph has two directions.
                The horizontal axis (x-axis) usually represents input.
                 The vertical axis (y-axis) represents output.
                For example:
                 Hours studied → Test score
                Input affects output.
                Image to place here:
                 A clean x–y grid labeled:
                 Bottom: “Hours Studied (x)”
                 Side: “Test Score (y)”
                """,
                
                "IMG:2T7",

                "--------------------------------------------------",

                """
                Plotting Points
                Each data pair becomes a point.
                If someone studies 2 hours and scores 70,
                 that becomes one dot on the graph.
                If they study 5 hours and score 85,
                 that becomes another dot.
                One point = one relationship.
                Image to place here:
                 Grid with dots at (2,70), (5,85), etc.
                 Minimalistic style.
                """,
                
                "IMG:3T7",

                "--------------------------------------------------",

                """
                Seeing Trends
                When many points move in a direction, that’s a trend.
                If more study hours usually lead to higher scores,
                 the dots will rise as you move right.
                That’s called a positive relationship.
                If dots fall as you move right,
                 that’s a negative relationship.
                Graphs show relationships visually.
                Image to place here:
                 Two side-by-side mini graphs:
                 Left: upward trend (positive)
                 Right: downward trend (negative)
                """,
                
                "IMG:4T7",

                "--------------------------------------------------",

                """
                Why Relationships Matter
                Machine learning is about finding relationships.
                Input → Output.
                Graphs help us see those connections before a computer does.
                If the relationship looks clear to us,
                 a model can likely learn it too.
                Graphs are the bridge between raw data and prediction.
                Image to place here:
                 Flow diagram:
                 Input Data → Graph → Pattern → Prediction
                """,
                
                "IMG:5T7",

                "--------------------------------------------------",

                """
                Real-World Example
                Imagine tracking temperature throughout the day.
                At 8am → 60°F
                 At 12pm → 75°F
                 At 4pm → 82°F
                 At 8pm → 70°F
                As you plot these points, you see a curve.
                Without a graph, it’s just numbers.
                 With a graph, it tells a story.
                Graphs don’t just show data.
                 They reveal behavior.
                Image to place here:
                 Time (x-axis) vs Temperature (y-axis)
                 Smooth rising then falling line curve.
                """,
                
                "IMG:6T7"

            ]
        ),
        
        8: Lesson(
            title: "Functions in Math (Input → Output)",
            content: [
                """
                Why Math Needs Functions
                Sometimes numbers follow a rule.
                Instead of listing every answer,
                 we can describe the pattern with one system.
                Functions let us turn input into output using a consistent rule.
                That’s powerful.
                Image to place here:
                 A simple diagram:
                 Input → Rule → Output
                 Minimal, clean layout.
                """,
                
                "IMG:1T8",

                "--------------------------------------------------",

                """
                What a Function Is
                A function is a rule that takes an input
                 and produces exactly one output.
                You give it something.
                 It applies a rule.
                 It gives you a result.
                Same input → same output. Always.
                Image to place here:
                 Box labeled “f(x)”
                 Arrow from 3 → f(x) → 7
                 Subtle text: “Rule inside the box”
                """,
                
                "IMG:2T8",
                
                "--------------------------------------------------",

                """
                Seeing the Rule
                Imagine this rule:
                Multiply any number by 2.
                If you input 3 → output is 6
                 If you input 5 → output is 10
                 If you input 10 → output is 20
                The rule never changes.
                 Only the input does.
                Image to place here:
                 Small table:
                 Input | Output
                 3 | 6
                 5 | 10
                 10 | 20
                """,
                
                "IMG:3T8",
                
                "--------------------------------------------------",

                """
                Functions on a Graph
                Functions can also be drawn.
                The input goes on the x-axis.
                 The output goes on the y-axis.
                If the rule is “multiply by 2,”
                 the graph forms a straight line.
                The line represents the relationship.
                Image to place here:
                 A straight line rising from left to right
                 Labeled: y = 2x
                """,
                
                "IMG:4T8",
                
                "--------------------------------------------------",

                """
                Why Consistency Matters
                A function must give one output for each input.
                If you input 4,
                 you can’t sometimes get 8 and sometimes get 12.
                That wouldn’t be a function.
                Functions are predictable systems.
                That predictability is what makes them useful.
                Image to place here:
                 Two visuals side by side:
                 Left: Input 4 → 8 (consistent)
                 Right: Input 4 → 8 and 12 (crossed out)
                """,
                
                "IMG:5T8",
                
                "--------------------------------------------------",

                """
                Real-World Example
                Think about a taxi fare.
                Base fee: $3
                 Plus $2 per mile.
                That’s a function.
                If you travel 1 mile → $5
                 If you travel 5 miles → $13
                 If you travel 10 miles → $23
                Distance is the input.
                 Cost is the output.
                The rule connects them.
                Image to place here:
                 Diagram:
                 Miles → Fare Calculation → Total Cost
                 With example values shown.
                """,
                
                "IMG:6T8",
                
                "--------------------------------------------------",

                """
                Why This Matters for Machine Learning
                A machine learning model is just a complex function.
                Input data → Model → Prediction.
                The only difference is that the rule inside the box
                 is learned from data instead of written by hand.
                If you understand functions,
                 you understand the structure behind intelligent systems.
                Image to place here:
                 Clean comparison:
                 Input → Function → Output
                 Below it:
                 Input → Model → Prediction
                """,
                
                "IMG:7T8"
            ]
        ),
        
        9: Lesson(
            title: "Measuring Error",
            content: [
                """
                Why Error Matters
                Making predictions is easy.
                Making accurate predictions is harder.
                If a model predicts something,
                 we need a way to measure how wrong it was.
                Without measuring error,
                 we have no idea if we’re improving.
                Image to place here:
                 Two boxes:
                 Prediction: 85
                 Actual: 92
                 Arrow pointing to a box labeled “Error”
                """,
                
                "IMG:1T9",
                
                "--------------------------------------------------",

                """
                What Error Is
                Error is the difference between what was predicted
                 and what actually happened.
                If a model predicts 85
                 but the real value is 92,
                The error is 7.
                Error tells us how far off we are.
                Image to place here:
                 92 − 85 = 7
                 Label: “Error = 7”
                """,
                
                "IMG:2T9",
                
                "--------------------------------------------------",

                """
                Bigger Error vs Smaller Error
                If a prediction is close to the real value,
                 the error is small.
                If it’s far away,
                 the error is large.
                Smaller error means better prediction.
                Large error means adjustment is needed.
                Image to place here:
                 Two comparisons:
                 Prediction 90 → Actual 92 → Error 2 (green)
                 Prediction 60 → Actual 92 → Error 32 (red)
                """,
                
                "IMG:3T9",
                
                "--------------------------------------------------",

                """
                Why We Don’t Just Look at One Prediction
                Models don’t predict once.
                They predict many times.
                So we measure the average error across all predictions.
                That gives us a clear picture of overall performance.
                One mistake doesn’t define the system.
                The pattern of mistakes does.
                Image to place here:
                 Multiple predictions with small error lines
                 Arrow pointing to “Average Error”
                """,
                
                "IMG:4T9",
                
                "--------------------------------------------------",

                """
                Real-World Example
                Imagine predicting house prices.
                Actual price: $300,000
                 Predicted price: $280,000
                Error: $20,000
                Now imagine predicting 100 houses.
                Some errors are small.
                 Some are bigger.
                To improve, the system looks at those errors
                 and adjusts its internal rule.
                Error is feedback.
                Without feedback, nothing improves.
                Image to place here:
                 Row of houses with small red lines showing difference
                 Arrow pointing to “Adjust Model”
                """,
                
                "IMG:5T9",
                
                "--------------------------------------------------",

                """
                Why This Matters for Machine Learning
                Machine learning works like this:
                
                1. Make a prediction


                2. Measure error


                3. Adjust


                4. Repeat


                That loop continues thousands of times.
                Error is not failure.
                Error is information.
                It tells the system how to get better.
                Image to place here:
                 Circular loop diagram:
                 Predict → Compare → Error → Adjust → Repeat
                """,
                
                "IMG:6T9",
                
            ]
        ),
        
        10: Lesson(
            title: "Modeling With a Line (Intuition Only)",
            content: [
                """
                Why We Model Data
                When we look at scattered data points, we want to understand the pattern behind them.
                Instead of memorizing every single point,
                 we try to describe the overall trend.
                That description is called a model.
                A simple way to model data is with a line.
                Image to place here:
                 Scatter plot with random dots and a faint straight line passing through them.
                """,
                
                "IMG:1T10",
                
                "--------------------------------------------------",

                """
                What “Fitting a Line” Means
                Imagine plotting hours studied on the x-axis
                 and test scores on the y-axis.
                The points might not form a perfect line.
                But we can draw a line that best represents the general direction.
                This is called fitting a line to the data.
                The line doesn’t hit every point exactly.
                 It captures the overall pattern.
                Image to place here:
                 Scatter plot with an upward slanted line labeled “Best Fit Line”.
                """,
                
                "IMG:2T10",

                "--------------------------------------------------",

                """
                Why the Line Isn’t Perfect
                Real-world data is messy.
                Some students might study 5 hours and score 95.
                 Another might study 5 hours and score 80.
                The line won’t pass through every point.
                Instead, it balances the errors.
                It tries to stay as close as possible to all the points overall.
                Image to place here:
                 Dots above and below a straight line
                 Small vertical lines showing distance from each dot to the line.
                """,
                
                "IMG:3T10",
                
                "--------------------------------------------------",

                """
                What the Line Represents
                The line is a rule.
                For any number of study hours,
                 it gives a predicted score.
                Input → Output.
                That’s the same structure as a function.
                The difference is that this rule is chosen because it best matches the data.
                Image to place here:
                 Diagram:
                 Hours Studied → Line Rule → Predicted Score
                """,
                
                "IMG:4T10",
                
                "--------------------------------------------------",

                """
                Real-World Example
                Imagine tracking temperature over time.
                The data points might go up and down slightly.
                But overall, the trend may be rising.
                A line drawn through those points
                 gives a simple summary of the direction.
                Instead of focusing on small daily changes,
                 we focus on the bigger pattern.
                Image to place here:
                 Time vs Temperature scatter plot
                 Straight trend line showing overall increase.
                """,
                
                "IMG:5T10",

                "--------------------------------------------------",

                """
                Why This Matters for Machine Learning
                Machine learning models try to find patterns in data.
                Fitting a line is the simplest version of that idea.
                
                We:
                
                1. Look at data


                2. Find a rule that best matches it


                3. Use that rule to make predictions


                This is the foundation of regression.
                From here, lines become curves.
                 Curves become complex models.
                But the core idea stays the same:
                Find a pattern.
                 Use it to predict.
                Image to place here:
                 Flow diagram:
                 Data Points → Find Best Pattern → Prediction
                """,
                
                "IMG:6T10",
            ]
        ),
        11: Lesson(
            title: "What is a model?",
            content: [
                """
                Why We Need Models
                So far, we’ve talked about data.
                But data by itself doesn’t do anything.
                If we want predictions,
                we need a system that can learn patterns.
                If study hours increase → scores often increase.
                If house size increases → price often increases.
                If temperature drops → energy use may rise.
                To turn patterns into predictions,
                we need a model.
                Image to place here:
                Simple flow diagram:
                Data → Model → Prediction
                """,
                
                "IMG:1T11",
                
                "--------------------------------------------------",

                """
                What a Model Is
                A model is a system that takes input
                and produces a prediction.
                It looks at patterns in past data
                and uses them to guess future outcomes.
                It doesn’t memorize everything.
                It tries to learn the relationship.
                Think of it as a rule that wasn’t written by hand —
                it was learned from examples.
                Image to place here:
                Box labeled “Model”
                Arrow: Input Data → Model → Predicted Output
                """,

                "IMG:2T11",
                
                "--------------------------------------------------",

                """
                The Guess → Error → Adjust Cycle
                Models don’t start smart.
                At first, they guess.
                Then they compare their guess to the real answer.
                The difference is called error.
                Using that error, the model adjusts slightly.
                Then it guesses again.
                This repeats many times.
                Image to place here:
                Circular loop diagram labeled:
                Guess → Compare → Error → Adjust → Repeat
                """,
                
                "IMG:3T11",

                "--------------------------------------------------",

                """
                Why Repetition Matters
                One guess doesn’t teach much.
                But thousands of guesses do.
                Each small adjustment improves the rule inside the model.
                Over time, the predictions get closer to reality.
                Learning is just repeated correction.
                Image to place here:
                Error shrinking over time graph
                X-axis: Training Steps
                Y-axis: Error
                Line decreasing gradually
                """,
                
                "IMG:4T11",

                "--------------------------------------------------",

                """
                Real-World Example
                Imagine predicting house prices.
                The model sees:
                Size → 1500 sq ft
                Actual price → $300,000
                It guesses: $260,000.
                Error: $40,000.
                That error tells the model it’s too low.
                So it adjusts its internal rule.
                Next time, maybe it guesses $285,000.
                Still some error — but smaller.
                Repeat this across hundreds of houses.
                Eventually, the predictions become much closer.
                The model didn’t “understand” houses.
                It improved through feedback.
                Image to place here:
                Row of houses
                Prediction below each
                Small red lines showing difference
                Arrow pointing to “Adjust Rule”
                """,

                "IMG:5T11",

                "--------------------------------------------------",

                """
                Why This Matters
                Machine learning is not magic.
                It’s pattern learning through feedback.
                Input → Model → Prediction
                Prediction → Error → Adjustment
                That loop is the engine behind intelligent systems.
                Every advanced AI system
                is built on this simple cycle.
                Image to place here:
                Clean combined flow:
                Data → Model → Prediction
                Prediction → Error → Update → Model
                """,
                
                "IMG:6T11",
            ]
        ),
        
        12: Lesson(
            title: "Training vs Testing",
            content: [
                """
                Why We Can’t Just Trust a Model
                A model can look smart.
                It can predict very well on the data it has already seen.
                But that doesn’t mean it truly understands the pattern.
                If it only performs well on familiar data,
                that’s not intelligence.
                To know if a model is actually useful,
                we have to test it on something new.
                Image to place here:
                Split screen diagram:
                Left side labeled “Seen Data”
                Right side labeled “New Data”
                Model in the middle
                """,
                
                "IMG:1T12",

                "--------------------------------------------------",

                """
                What Training Data Is
                Training data is what the model learns from.
                It sees the inputs.
                It sees the correct answers.
                It adjusts its internal rule based on errors.
                This is where the guess → error → adjust cycle happens.
                The model improves by practicing on this data.
                Image to place here:
                Data → Model → Error → Adjust loop
                Label the data side “Training Data”
                """,
                
                "IMG:2T12",
                
                "--------------------------------------------------",

                """
                What Testing Data Is
                Testing data is different.
                The model has never seen it before.
                We don’t let it adjust.
                We just check how well it performs.
                This shows us whether it actually learned a pattern
                or just memorized examples.
                Testing answers one question:
                Can this model handle new situations?
                Image to place here:
                Model → New Data → Prediction
                Below it: Compare with Actual → Measure Accuracy
                """,
                
                "IMG:3T12",

                "--------------------------------------------------",

                """
                Why Separation Matters
                If we train and test on the same data,
                the results will look unrealistically good.
                It’s like studying the exact answers
                and then taking the same test.
                Of course you’ll score high.
                But real intelligence means handling unfamiliar problems.
                That’s why we separate training and testing.
                Image to place here:
                Student analogy graphic:
                Left: “Study Sheet”
                Right: “New Exam”
                Arrow showing difference
                """,
                
                "IMG:4T12",

                "--------------------------------------------------",

                """
                Real-World Example
                Imagine predicting house prices again.
                You train the model on 1,000 houses.
                It learns patterns between size and price.
                Now you give it 100 completely new houses.
                If predictions are still accurate,
                the model understands the relationship.
                If predictions fail badly,
                it didn’t truly learn.
                Training builds the rule.
                Testing proves the rule works.
                Image to place here:
                Two groups of houses:
                Group 1 labeled “Training”
                Group 2 labeled “Testing”
                Arrow from model to both
                """,
                
                "IMG:5T12",

                "--------------------------------------------------",

                """
                Why This Matters
                Machine learning isn’t about memorizing data.
                It’s about learning patterns that generalize.
                Training = learning.
                Testing = proving.
                If a model performs well on new data,
                it’s ready for the real world.
                Every serious ML system follows this structure:
                Training Data → Learn Pattern
                Testing Data → Evaluate Performance
                """,
                
                "IMG:6T12",
            ]
        ),
        
        13: Lesson(
            title: "Overfitting vs Generalization",
            content: [
                """
                Why Memorizing Isn’t Learning
                Imagine a student who memorizes every question from one practice test.
                On that exact test, they score 100%.
                But if the questions change slightly, they fail.
                That’s not understanding.
                That’s memorizing.
                Models can do the same thing.
                Image to place here:
                Two students:
                Left: “Memorized Answers”
                Right: “Understands Concepts”
                """,
                
                "IMG:1T13",

                "--------------------------------------------------",

                """
                What Overfitting Is
                
                Overfitting happens when a model learns the training data too 
                perfectly.
                
                It doesn’t just learn the pattern.
                It memorizes small details and noise.
                On training data → accuracy looks amazing.
                On new data → performance drops.
                It fits the past too tightly.
                Image to place here:
                Scatter plot with a wiggly line that touches almost every point
                Label: “Overfit Model”
                """,
                
                "IMG:2T13",

                "--------------------------------------------------",

                """
                What Generalization Is
                Generalization is what we actually want.
                Instead of memorizing every point,
                the model learns the overall trend.
                It may not hit every training point exactly.
                But it performs well on new data.
                It captures the big idea.
                Image to place here:
                Same scatter plot
                Smooth straight or slightly curved line
                Label: “Generalized Model”
                """,
                
                "IMG:3T13",

                "--------------------------------------------------",

                """
                Why Simpler Can Be Better
                A more complex model isn’t always smarter.
                If a line explains the pattern well,
                a complicated curve may just be chasing noise.
                The goal isn’t perfection on old data.
                The goal is strong performance on unseen data.
                Image to place here:
                Side-by-side comparison:
                Left: Simple smooth line
                Right: Extremely wavy line
                """,
                
                "IMG:4T13",

                "--------------------------------------------------",

                """
                Real-World Example
                Imagine predicting test scores from study hours.
                If one student studied 5 hours and scored 95,
                another studied 5 hours and scored 80.
                A good model finds the average trend.
                An overfit model might create sharp bends
                just to pass through every single point.
                That makes it unstable.
                When a new student studies 5 hours,
                the overfit model may give a weird prediction.
                The generalized model stays consistent.
                Image to place here:
                New data point added to graph
                Simple line handles it well
                Wavy line predicts something extreme
                """,
                
                "IMG:5T13",

                "--------------------------------------------------",

                """
                Why This Matters
                Machine learning isn’t about copying the past.
                It’s about preparing for the future.
                Overfitting = memorization.
                Generalization = understanding.
                The best models balance accuracy and flexibility.
                That balance is what makes AI useful in the real world.
                """,
                
                "IMG:6T13",

            ]
        ),
        
        14: Lesson(
            title: "Supervised Learning",
            content: [
                """
                Why Models Need Guidance
                Imagine trying to learn math
                without ever being told if your answers are correct.
                You’d guess.
                But you wouldn’t know if you were improving.
                Models work the same way.
                To learn effectively,
                they need examples with correct answers.
                That’s called supervision.
                Image to place here:
                Input + Correct Answer → Model
                """,
                
                "IMG:1T14",

                "--------------------------------------------------",

                """
                What Supervised Learning Is
                Supervised learning means the model is trained using labeled data.
                Each input comes with the correct output.
                The model:
                Makes a prediction
                Compares it to the correct answer
                Adjusts based on the error
                The labels act like a teacher.
                Image to place here:
                Data Point → Label
                Both feeding into Model
                """,
                
                "IMG:2T14",

                "--------------------------------------------------",

                """
                Two Main Types: Classification
                Classification means predicting a category.
                Example:
                Email → Spam or Not Spam
                Photo → Cat or Dog
                Medical scan → Healthy or Not Healthy
                The output is a label.
                It chooses a group.
                Image to place here:
                Image of an email
                Arrow to Model
                Output: “Spam”
                """,
                
                "IMG:3T14",

                "--------------------------------------------------",

                """
                Two Main Types: Regression
                Regression means predicting a number.
                Example:
                House size → Price
                Study hours → Test score
                Age → Height
                The output is a value.
                It estimates a quantity.
                Image to place here:
                House icon
                Arrow to Model
                Output: “$320,000”
                """,
                
                "IMG:4T14",

                "--------------------------------------------------",

                """
                Why Labels Matter
                Without labels,
                the model wouldn’t know what it’s aiming for.
                It would guess randomly
                with no feedback.
                Labels provide direction.
                They define what “correct” means.
                Image to place here:
                Target with bullseye
                Model arrow aiming at center
                """,
                
                "IMG:5T14",

                "--------------------------------------------------",

                """
                Real-World Example
                Imagine building a model to predict test scores.
                You collect data:
                Hours studied → Actual score
                You train the model on many examples.
                The hours are the input.
                The real score is the label.
                The model adjusts until predictions are close.
                That’s supervised learning.
                It learns from labeled examples
                the same way students learn from graded assignments.
                Image to place here:
                Table:
                Hours | Score
                2 → 70
                5 → 85
                8 → 95
                Arrow into Model
                """,
                
                "IMG:6T14",

                "--------------------------------------------------",

                """
                Why This Matters
                Most real-world machine learning systems
                are supervised.
                They learn from examples
                that include correct answers.
                Classification predicts categories.
                Regression predicts numbers.
                Different outputs.
                Same learning structure.
                Input → Model → Prediction
                Prediction → Compare to Label → Adjust
                That’s supervised learning.
                """,
                
                "IMG:7T14",

            ]
        ),
        
        15: Lesson(
            title: "Neural Networks (Big Picture)",
            content: [
                """
                Why Simple Models Aren’t Always Enough
                Some patterns are simple.
                Study more → score higher.
                Bigger house → higher price.
                But real-world problems are messier.
                Faces in photos.
                Spoken language.
                Handwritten numbers.
                A single line or rule isn’t powerful enough.
                We need models that can learn complex patterns.
                That’s where neural networks come in.
                Image to place here:
                Simple pattern → straight line
                Complex pattern → tangled curve
                """,
                
                "IMG:1T15",
                
                "--------------------------------------------------",

                """
                What a Neural Network Is
                A neural network is a model made of layers.
                Each layer takes input,
                processes it,
                and passes it forward.
                Instead of one rule,
                it uses many small rules stacked together.
                Together, they form a powerful system.
                Image to place here:
                Diagram:
                Input Layer → Hidden Layers → Output Layer
                """,
                
                "IMG:2T15",

                "--------------------------------------------------",

                """
                Thinking in Layers
                Each layer learns something different.
                Early layers learn simple features.
                Later layers combine them into complex ideas.
                For example, in image recognition:
                First layer → edges
                Next layer → shapes
                Final layer → object
                The network builds understanding step by step.
                Image to place here:
                Image broken into:
                Edges → Shapes → Object
                """,
                
                "IMG:3T15",

                "--------------------------------------------------",

                """
                Weights: What the Network Learns
                Inside a neural network are numbers called weights.
                Weights control how strong each connection is.
                During training:
                If a prediction is wrong → weights adjust
                If it’s close → small adjustment
                Learning is just updating weights
                to reduce error.
                Image to place here:
                Connections between nodes
                Some thick, some thin
                Label: “Weights”
                """,
                
                "IMG:4T15",

                "--------------------------------------------------",

                """
                Neural Networks Still Follow the Same Loop
                Even though neural networks look complex,
                the learning process is the same.
                They:
                Make a prediction
                Measure error
                Adjust weights
                Repeat
                The structure is bigger,
                but the logic hasn’t changed.
                Image to place here:
                Circular loop:
                Predict → Error → Adjust Weights → Repeat
                """,
                
                "IMG:5T15",

                "--------------------------------------------------",

                """
                Real-World Example
                Imagine recognizing handwritten numbers.
                Each image has thousands of pixels.
                A neural network looks at all of them at once.
                It learns:
                Which pixel patterns mean “3”
                Which patterns mean “8”
                Over time, it gets better
                by adjusting its internal weights.
                It doesn’t memorize images.
                It learns patterns.
                Image to place here:
                Handwritten digits
                Arrow to Neural Network
                Output: “3”
                """,
                
                "IMG:6T15",

                "--------------------------------------------------",

                """
                Why This Matters
                Neural networks power modern AI.
                Image recognition.
                Voice assistants.
                Self-driving cars.
                Language models.
                But underneath all that power
                is the same idea you’ve learned throughout this app:
                Input → Model → Prediction
                Prediction → Error → Adjustment
                Neural networks are not magic.
                They’re layered functions
                that learn by feedback.
                If you understand that,
                you understand the foundation of modern AI.
                Image to place here:
                Simple progression diagram:
                Function → Model → Neural Network
                """,
                
                "IMG:7T15",
            ]
        )
    ]
}
