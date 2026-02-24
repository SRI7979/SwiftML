//
//  QuizView.swift
//  SwiftML
//
//  Created by Sri Challa on 2/23/26.
//
//
//  QuizView.swift
//  SwiftML
//
//  Quiz interface with question-by-question navigation

import SwiftUI

struct QuizView: View {
    let quiz: Quiz
    
    @State private var currentQuestionIndex = 0
    @State private var selectedAnswerIndex: Int? = nil
    @State private var showExplanation = false
    @State private var score = 0
    @State private var answeredQuestions: Set<Int> = []
    @State private var showResults = false
    
    @Environment(\.dismiss) var dismiss
    
    var currentQuestion: QuizQuestion {
        quiz.questions[currentQuestionIndex]
    }
    
    var isLastQuestion: Bool {
        currentQuestionIndex == quiz.questions.count - 1
    }
    
    var progress: Double {
        Double(currentQuestionIndex + 1) / Double(quiz.questions.count)
    }
    
    var toolbarTitle: some View {
        VStack(spacing: 4) {
            Text(quiz.title)
                .font(.headline)
                .foregroundColor(.primary)
            
            Text("Question \(currentQuestionIndex + 1) of \(quiz.questions.count)")
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.blue.opacity(0.3), .purple.opacity(0.2)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            if showResults {
                resultsView
            } else {
                quizContentView
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                toolbarTitle
            }
        }
    }
    
    var quizContentView: some View {
        VStack(spacing: 20) {
            progressBar
            ScrollView { quizScrollContent }
            navigationButtons
        }
    }
    
    private var progressBar: some View {
        VStack(spacing: 8) {
            HStack {
                Text("Progress")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Spacer()
                Text("\(Int(progress * 100))%")
                    .font(.caption.bold())
                    .foregroundColor(.secondary)
            }
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.gray.opacity(0.2))
                    RoundedRectangle(cornerRadius: 10)
                        .fill(LinearGradient(colors: [.blue, .purple], startPoint: .leading, endPoint: .trailing))
                        .frame(width: geometry.size.width * progress)
                }
            }
            .frame(height: 8)
        }
        .padding(.horizontal)
        .padding(.top)
    }

    private var quizScrollContent: some View {
        VStack(spacing: 24) {
            questionCard
            answersList
            if showExplanation { explanationCard }
        }
        .padding()
    }

    private var questionCard: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image(systemName: "questionmark.circle.fill")
                    .font(.title2)
                    .foregroundStyle(.blue.gradient)
                Text("Question \(currentQuestionIndex + 1)")
                    .font(.headline)
                    .foregroundColor(.secondary)
                Spacer()
            }
            Text(currentQuestion.question)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
        }
        .padding(20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
    }

    private var answersList: some View {
        VStack(spacing: 12) {
            ForEach(0..<currentQuestion.options.count, id: \.self) { index in
                answerButton(index: index)
            }
        }
    }

    private var explanationCard: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                let isCorrect = (selectedAnswerIndex == currentQuestion.correctIndex)
                Image(systemName: isCorrect ? "checkmark.circle.fill" : "xmark.circle.fill")
                    .font(.title3)
                    .foregroundColor(isCorrect ? .green : .red)
                Text(isCorrect ? "Correct!" : "Incorrect")
                    .font(.headline)
                    .foregroundColor(isCorrect ? .green : .red)
                Spacer()
            }
            Text(currentQuestion.explanation)
                .font(.body)
                .foregroundColor(.secondary)
        }
        .padding(20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background((selectedAnswerIndex == currentQuestion.correctIndex ? Color.green : Color.red).opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(selectedAnswerIndex == currentQuestion.correctIndex ? Color.green : Color.red, lineWidth: 2)
        )
        .transition(.scale.combined(with: .opacity))
    }

    private var navigationButtons: some View {
        HStack(spacing: 16) {
            if currentQuestionIndex > 0 {
                Button {
                    withAnimation { goToPreviousQuestion() }
                } label: {
                    HStack { Image(systemName: "chevron.left"); Text("Previous") }
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
            }
            if showExplanation {
                Button {
                    withAnimation {
                        if isLastQuestion { showResults = true } else { goToNextQuestion() }
                    }
                } label: {
                    HStack {
                        Text(isLastQuestion ? "See Results" : "Next")
                        Image(systemName: isLastQuestion ? "flag.checkered" : "chevron.right")
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(LinearGradient(colors: [.blue, .purple], startPoint: .leading, endPoint: .trailing))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                }
            }
        }
        .padding()
    }
    
    
    func answerButton(index: Int) -> some View {
        Button {
            if selectedAnswerIndex == nil {
                selectAnswer(index)
            }
        } label: {
            HStack(spacing: 12) {
               
                Text(optionLetter(for: index))
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 36, height: 36)
                    .background(
                        Circle()
                            .fill(buttonColor(for: index))
                    )
                
               
                Text(currentQuestion.options[index])
                    .font(.body)
                    .foregroundColor(.primary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
          
                if showExplanation {
                    Image(systemName: index == currentQuestion.correctIndex ? "checkmark.circle.fill" : (index == selectedAnswerIndex ? "xmark.circle.fill" : ""))
                        .font(.title3)
                        .foregroundColor(index == currentQuestion.correctIndex ? .green : .red)
                }
            }
            .padding(16)
            .frame(maxWidth: .infinity)
            .background(buttonBackground(for: index))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(buttonBorder(for: index), lineWidth: 2)
            )
            .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
        }
        .disabled(showExplanation)
    }

    func optionLetter(for index: Int) -> String {
        let letters = ["A", "B", "C", "D", "E", "F"]
        return letters[index]
    }
    
    func buttonColor(for index: Int) -> Color {
        if !showExplanation {
            return index == selectedAnswerIndex ? .blue : .gray.opacity(0.3)
        }
        
        if index == currentQuestion.correctIndex {
            return .green
        } else if index == selectedAnswerIndex {
            return .red
        } else {
            return .gray.opacity(0.3)
        }
    }
    
    func buttonBackground(for index: Int) -> Color {
        if !showExplanation {
            return index == selectedAnswerIndex ? .blue.opacity(0.1) : .clear
        }
        
        if index == currentQuestion.correctIndex {
            return .green.opacity(0.1)
        } else if index == selectedAnswerIndex {
            return .red.opacity(0.1)
        } else {
            return .clear
        }
    }
    
    func buttonBorder(for index: Int) -> Color {
        if !showExplanation {
            return index == selectedAnswerIndex ? .blue : .gray.opacity(0.2)
        }
        
        if index == currentQuestion.correctIndex {
            return .green
        } else if index == selectedAnswerIndex {
            return .red
        } else {
            return .gray.opacity(0.2)
        }
    }
    
    func selectAnswer(_ index: Int) {
        selectedAnswerIndex = index

        if index == currentQuestion.correctIndex {
            score += 1
        }
        
        answeredQuestions.insert(currentQuestionIndex)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            withAnimation {
                showExplanation = true
            }
        }
    }
    
    func goToNextQuestion() {
        selectedAnswerIndex = nil
        showExplanation = false
        currentQuestionIndex += 1
    }
    
    func goToPreviousQuestion() {
        selectedAnswerIndex = nil
        showExplanation = false
        currentQuestionIndex -= 1
    }
    
    var resultsView: some View {
        ScrollView {
            VStack(spacing: 30) {
                Spacer()
                
                
                Image(systemName: scorePercentage >= 70 ? "trophy.fill" : "star.fill")
                    .font(.system(size: 50))
                    .foregroundStyle(
                        scorePercentage >= 70 ?
                        LinearGradient(colors: [.yellow, .orange], startPoint: .top, endPoint: .bottom) :
                            LinearGradient(colors: [.blue, .purple], startPoint: .top, endPoint: .bottom)
                    )
                    .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 5)
                
                
                VStack(spacing: 8) {
                    Text(scorePercentage >= 70 ? "Great Job!" : "Keep Learning!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("You completed the quiz")
                        .font(.title3)
                        .foregroundColor(.secondary)
                }
                
                
                VStack(spacing: 20) {
                    HStack(spacing: 40) {
                        VStack {
                            Text("\(score)")
                                .font(.system(size: 48, weight: .bold))
                                .foregroundColor(.green)
                            Text("Correct")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        
                        VStack {
                            Text("\(quiz.questions.indices.count - score)")
                                .font(.system(size: 48, weight: .bold))
                                .foregroundColor(.red)
                            Text("Incorrect")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                    
                    
                    VStack(spacing: 8) {
                        Text("\(Int(scorePercentage))%")
                            .font(.system(size: 64, weight: .bold))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: scorePercentage >= 70 ? [.green, .blue] : [.orange, .red],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                        
                        Text("Final Score")
                            .font(.headline)
                            .foregroundColor(.secondary)
                    }
                }
                .padding(30)
                .frame(maxWidth: .infinity)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .black.opacity(0.1), radius: 15, x: 0, y: 10)
                .padding(.horizontal)
                
                Spacer()
                
                
                VStack(spacing: 12) {
                    Button {
                        resetQuiz()
                    } label: {
                        HStack {
                            Image(systemName: "arrow.clockwise")
                            Text("Try Again")
                        }
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            LinearGradient(
                                colors: [.blue, .purple],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                    
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "house.fill")
                            Text("Back to Home")
                        }
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                }
                .padding()
            }
            .padding()
        }
    }
    
    var scorePercentage: Double {
        Double(score) / Double(quiz.questions.count) * 100
    }
    
    func resetQuiz() {
        withAnimation {
            currentQuestionIndex = 0
            selectedAnswerIndex = nil
            showExplanation = false
            score = 0
            answeredQuestions = []
            showResults = false
        }
    }
}


