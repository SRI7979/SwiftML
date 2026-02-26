//
//  HomeView.swift
//  SwiftML
//
//  Created by Sri Challa on 2/7/26.
//                  __
//                  ||
//                  ||
//                 \  /
//BUTTON FORMULA:   \/
// when making new buttons, move the x up/down by 130, and move y by 120, for text make it 70 below the button, and for nested button, make it 90 below button which is 40 below text

import SwiftUI
struct HomeView: View {
    @State private var selectedNode: Int? = nil
    @State private var showTaskDetail = false
    @State private var activeLesson: Lesson? = nil
    @State private var completedNodes: Set<Int> = []
    @State private var showQuiz = false
    @State private var activeQuizID: Int? = nil
    
    private let totalContentHeight: CGFloat = 2650
    private let designWidth: CGFloat = 400

    private var layoutScale: CGFloat {
        let screenWidth = UIScreen.main.bounds.width
        return min(max(screenWidth / designWidth, 0.85), 1.8)
    }
    var body: some View {
        NavigationStack {
            ScrollView {
                    
                    ZStack(alignment: .top) {
                        //Color.black
                        // .ignoresSafeArea()
                        
                        LinearGradient(colors: [.teal, .teal.opacity(0.7), .blue, .blue.opacity(0.3), .purple.opacity(0.5), .purple], startPoint: .top, endPoint: .bottom)
                                                        .frame(width: designWidth, height: totalContentHeight + 400)
                            .frame(height: totalContentHeight)
                            .ignoresSafeArea()
                            .onTapGesture {
                                selectedNode = nil
                            }

                        VStack(alignment: .leading, spacing: 4) {
                            Text("Python for ML")
                                .font(.system(size: 48, weight: .bold, design: .rounded))
                                .font(.caption.bold())
                                .foregroundStyle(
                                    LinearGradient(
                                        colors: [.white, Color(red: 0.4, green: 0.9, blue: 0.9)], // White to bright Teal
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .shadow(color: .blue.opacity(0.7), radius: 10, x: 0, y: 0)
                                .kerning(2)
                            
                            Rectangle()
                                .frame(width: 95, height: 6)
                                .foregroundColor(.teal)
                        }
                        .position(x: 200, y: 45)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Math for ML")
                                .font(.system(size: 48, weight: .bold, design: .rounded))
                                .font(.caption.bold())
                                .foregroundStyle(
                                    LinearGradient(
                                        colors: [.white, Color(red: 0.4, green: 0.9, blue: 0.9)], // White to bright Teal
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .shadow(color: .blue.opacity(0.7), radius: 10, x: 0, y: 0)
                                .kerning(2)
                            
                            Rectangle()
                                .frame(width: 95, height: 6)
                                .foregroundColor(.teal)
                        }
                        .position(x: 195, y: 900)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("ML Basics")
                                .font(.system(size: 48, weight: .bold, design: .rounded))
                                .font(.caption.bold())
                                .foregroundStyle(
                                    LinearGradient(
                                        colors: [.white, Color(red: 0.4, green: 0.9, blue: 0.9)], // White to bright Teal
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .shadow(color: .blue.opacity(0.7), radius: 10, x: 0, y: 0)
                                .kerning(2)
                            Rectangle()
                                .frame(width: 70, height: 6)
                                .foregroundColor(.teal)
                        }
                        .position(x: 200, y: 1780)
                        
                        //MATH-------------------|
                        //SECTION----------------|
                        //STARTED----------------|
                        Path { path in
                            path.move(to: CGPoint(x: 330, y: 160))
                            path.addCurve(to: CGPoint(x: 200, y: 280),
                                          control1: CGPoint(x: 330, y: 160),
                                          control2: CGPoint(x: 200, y: 280))
                        }
                        .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, dash: [10, 15]))
                        .foregroundStyle(.white.opacity(0.15))
                        
                        //1st button
                        Button(action: {
                            selectedNode = selectedNode == 1 ? nil : 1
                        }) {
                            VStack(spacing: 8) {
                                Image(systemName: completedNodes.contains(1) ? "checkmark.seal.fill" : "terminal")
                                    .foregroundStyle(completedNodes.contains(1) ? Color.green.gradient : Color.black.gradient)
                                    .font(.system(size: 28, weight: .light))
                                    .foregroundStyle(.black.gradient)
                                if(completedNodes.contains(1)){
                                    Text("Finished")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                                else{
                                    Text("Task 1")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .buttonStyle(TaskButtonStyle())
                        .position(x: 330, y: 160)
                        
                        if selectedNode == 1 {
                            Text("Intro to Python!")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .position(x: 330, y: 230)
                            
                            Button {
                                showTaskDetail = true
                                activeLesson = LessonProvider.data[1]
                            }
                            label: {
                                Text("Start task")
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 10)
                                    .background(Color.teal)
                                    .cornerRadius(12)
                            }
                            .position(x:330, y: 270)
                            
                        }
                        
                        Path { path in
                            path.move(to: CGPoint(x: 200, y: 280))
                            path.addCurve(to: CGPoint(x: 70, y: 400),
                                          control1: CGPoint(x: 200, y: 280),
                                          control2: CGPoint(x: 70, y: 400))
                        }
                        .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, dash: [10, 15]))
                        .foregroundStyle(.white.opacity(0.15))
                        
                        //2nd button
                        Button(action: {
                            selectedNode = selectedNode == 2 ? nil : 2
                        }) {
                            VStack(spacing: 8) {
                                Image(systemName: completedNodes.contains(2) ? "checkmark.seal.fill" : "cpu")
                                    .foregroundStyle(completedNodes.contains(2) ? Color.green.gradient : Color.blue.gradient)
                                    .font(.system(size: 28, weight: .light))
                                    .foregroundStyle(.black.gradient)
                                if(completedNodes.contains(2)){
                                    Text("Finished")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                                else{
                                    Text("Task 2")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .buttonStyle(TaskButtonStyle())
                        .position(x: 200, y: 280)
                        
                        if selectedNode == 2 {
                            Text("Conditionals")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .position(x: 200, y: 350)
                            
                            Button {
                                showTaskDetail = true
                                activeLesson = LessonProvider.data[2]
                            } label: {
                                Text("Start task")
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 10)
                                    .background(Color.teal)
                                    .cornerRadius(12)
                            }
                            .position(x:200, y: 390)
                        }
                        
                        Path { path in
                            path.move(to: CGPoint(x: 70, y: 400))
                            path.addCurve(to: CGPoint(x: 200, y: 520),
                                          control1: CGPoint(x: 70, y: 400),
                                          control2: CGPoint(x: 200, y: 520))
                        }
                        .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, dash: [10, 15]))
                        .foregroundStyle(.white.opacity(0.15))
                        
                        //3rd button
                        Button(action: {
                            selectedNode = selectedNode == 3 ? nil : 3
                        }) {
                            VStack(spacing: 8) {
                                Image(systemName: completedNodes.contains(3) ? "checkmark.seal.fill" : "chevron.left.slash.chevron.right")
                                    .foregroundStyle(completedNodes.contains(3) ? Color.green.gradient : Color.purple.gradient)
                                    .font(.system(size: 28, weight: .light))
                                    .foregroundStyle(.black.gradient)
                                if(completedNodes.contains(3)){
                                    Text("Finished")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                                else{
                                    Text("Task 3")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .buttonStyle(TaskButtonStyle())
                        .position(x: 70, y: 400)
                        
                        if selectedNode == 3 {
                            Text("Loops")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .position(x: 70, y: 470)
                            
                            Button {
                                showTaskDetail = true
                                activeLesson = LessonProvider.data[3]
                            } label: {
                                Text("Start task")
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 10)
                                    .background(Color.teal)
                                    .cornerRadius(12)
                            }
                            .position(x:70, y: 510)
                        }
                        Path { path in
                            path.move(to: CGPoint(x: 200, y: 520))
                            path.addCurve(to: CGPoint(x: 330, y: 640),
                                          control1: CGPoint(x: 200, y: 520),
                                          control2: CGPoint(x: 330, y: 640))
                        }
                        .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, dash: [10, 15]))
                        .foregroundStyle(.white.opacity(0.15))
                        
                        //4th button
                        Button(action: {
                            selectedNode = selectedNode == 4 ? nil : 4
                        }) {
                            VStack(spacing: 8) {
                                Image(systemName: completedNodes.contains(4) ? "checkmark.seal.fill" : "flowchart")
                                    .foregroundStyle(completedNodes.contains(4) ? Color.green.gradient : Color.green.gradient)
                                    .font(.system(size: 28, weight: .light))
                                    .foregroundStyle(.black.gradient)
                                if(completedNodes.contains(4)){
                                    Text("Finished")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                                else{
                                    Text("Task 4")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .buttonStyle(TaskButtonStyle())
                        .position(x: 200, y: 520)
                        
                        if selectedNode == 4 {
                            Text("Functions")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .position(x: 200, y: 590)
                            
                            Button {
                                showTaskDetail = true
                                activeLesson = LessonProvider.data[4]
                            } label: {
                                Text("Start task")
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 10)
                                    .background(Color.teal)
                                    .cornerRadius(12)
                            }
                            .position(x:200, y: 630)
                        }
                        //5th button
                        Button(action: {
                            selectedNode = selectedNode == 5 ? nil : 5
                        }) {
                            VStack(spacing: 8) {
                                Image(systemName: completedNodes.contains(5) ? "checkmark.seal.fill" : "swift")
                                    .foregroundStyle(completedNodes.contains(5) ? Color.green.gradient : Color.red.gradient)
                                    .font(.system(size: 28, weight: .light))
                                    .foregroundStyle(.black.gradient)
                                if(completedNodes.contains(5)){
                                    Text("Finished")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                                else{
                                    Text("Task 5")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .buttonStyle(TaskButtonStyle())
                        .position(x: 330, y: 640)
                        
                        if selectedNode == 5 {
                            Text("Data Processing")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .position(x: 330, y: 710)
                            
                            Button {
                                showTaskDetail = true
                                activeLesson = LessonProvider.data[5]
                            } label: {
                                Text("Start task")
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 10)
                                    .background(Color.teal)
                                    .cornerRadius(12)
                            }
                            .position(x:330, y: 750)
                        }
                        //MATH-------------------|
                        //SECTION----------------|
                        //COMPLETED--------------|
                        
                        
                        //PYTHON-------------------|
                        //SECTION------------------|
                        //STARTED------------------|
                        
                        Path { path in
                            path.move(to: CGPoint(x: 330, y: 1020))
                            path.addCurve(to: CGPoint(x: 200, y: 1150),
                                          control1: CGPoint(x: 330, y: 1020),
                                          control2: CGPoint(x: 200, y: 1150))
                        }
                        .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, dash: [10, 15]))
                        .foregroundStyle(.white.opacity(0.15))
                        
                        //6th button
                        Button(action: {
                            selectedNode = selectedNode == 6 ? nil : 6
                        }) {
                            VStack(spacing: 8) {
                                Image(systemName: completedNodes.contains(6) ? "checkmark.seal.fill" : "chart.bar.xaxis")
                                    .foregroundStyle(completedNodes.contains(6) ? Color.green.gradient : Color.blue.gradient)
                                    .font(.system(size: 28, weight: .light))
                                    .foregroundStyle(.black.gradient)
                                if(completedNodes.contains(6)){
                                    Text("Finished")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                                else{
                                    Text("Task 6")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .buttonStyle(TaskButtonStyle())
                        .position(x: 330, y: 1020)
                        
                        if selectedNode == 6 {
                            Text("Data")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .position(x: 330, y: 1090)
                            
                            Button {
                                showTaskDetail = true
                                activeLesson = LessonProvider.data[6]
                            } label: {
                                Text("Start task")
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 10)
                                    .background(Color.teal)
                                    .cornerRadius(12)
                            }
                            .position(x:330, y: 1130)
                        }
                        
                        Path { path in
                            path.move(to: CGPoint(x: 200, y: 1150))
                            path.addCurve(to: CGPoint(x: 70, y: 1300),
                                          control1: CGPoint(x: 70, y: 1300),
                                          control2: CGPoint(x: 200, y: 1150))
                        }
                        .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, dash: [10, 15]))
                        .foregroundStyle(.white.opacity(0.15))
                        
                        //7th button
                        Button(action: {
                            selectedNode = selectedNode == 7 ? nil : 7
                        }) {
                            VStack(spacing: 8) {
                                Image(systemName: completedNodes.contains(7) ? "checkmark.seal.fill" : "chart.line.uptrend.xyaxis")
                                    .foregroundStyle(completedNodes.contains(7) ? Color.green.gradient : Color.red.gradient)
                                    .font(.system(size: 28, weight: .light))
                                    .foregroundStyle(.black.gradient)
                                if(completedNodes.contains(7)){
                                    Text("Finished")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                                else{
                                    Text("Task 7")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .buttonStyle(TaskButtonStyle())
                        .position(x: 200, y: 1150)
                        
                        if selectedNode == 7 {
                            Text("Graphs & Relationships")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .position(x: 200, y: 1220)
                            
                            Button {
                                showTaskDetail = true
                                activeLesson = LessonProvider.data[7]
                            } label: {
                                Text("Start task")
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 10)
                                    .background(Color.teal)
                                    .cornerRadius(12)
                            }
                            .position(x:200, y: 1260)
                        }
                        
                        Path { path in
                            path.move(to: CGPoint(x: 70, y: 1300))
                            path.addCurve(to: CGPoint(x: 200, y: 1430),
                                          control1: CGPoint(x: 70, y: 1300),
                                          control2: CGPoint(x: 200, y: 1430))
                        }
                        .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, dash: [10, 15]))
                        .foregroundStyle(.white.opacity(0.15))
                        
                        //8th button
                        Button(action: {
                            selectedNode = selectedNode == 8 ? nil : 8
                        }) {
                            VStack(spacing: 8) {
                                Image(systemName: completedNodes.contains(8) ? "checkmark.seal.fill" : "function")
                                    .foregroundStyle(completedNodes.contains(8) ? Color.green.gradient : Color.purple.gradient)
                                    .font(.system(size: 28, weight: .light))
                                    .foregroundStyle(.black.gradient)
                                if(completedNodes.contains(8)){
                                    Text("Finished")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                                else{
                                    Text("Task 8")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .buttonStyle(TaskButtonStyle())
                        .position(x: 70, y: 1300)
                        
                        if selectedNode == 8 {
                            Text("Functions in Math")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .position(x: 70, y: 1370)
                            
                            Button {
                                showTaskDetail = true
                                activeLesson = LessonProvider.data[8]
                            } label: {
                                Text("Start task")
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 10)
                                    .background(Color.teal)
                                    .cornerRadius(12)
                            }
                            .position(x:70, y: 1410)
                        }
                        Path { path in
                            path.move(to: CGPoint(x: 200, y: 1430))
                            path.addCurve(to: CGPoint(x: 330, y: 1560),
                                          control1: CGPoint(x: 200, y: 1430),
                                          control2: CGPoint(x: 330, y: 1560))
                        }
                        .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, dash: [10, 15]))
                        .foregroundStyle(.white.opacity(0.15))
                        
                        
                        //9th button
                        Button(action: {
                            selectedNode = selectedNode == 9 ? nil : 9
                        }) {
                            VStack(spacing: 8) {
                                Image(systemName: completedNodes.contains(9) ? "checkmark.seal.fill" : "exclamationmark.triangle.fill")
                                    .foregroundStyle(completedNodes.contains(9) ? Color.green.gradient : Color.yellow.gradient)
                                    .font(.system(size: 28, weight: .light))
                                    .foregroundStyle(.black.gradient)
                                if(completedNodes.contains(9)){
                                    Text("Finished")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                                else{
                                    Text("Task 9")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .buttonStyle(TaskButtonStyle())
                        .position(x: 200, y: 1430)
                        
                        if selectedNode == 9 {
                            Text("Measuring Error")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .position(x: 200, y: 1500)
                            
                            Button {
                                showTaskDetail = true
                                activeLesson = LessonProvider.data[9]
                            } label: {
                                Text("Start task")
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 10)
                                    .background(Color.teal)
                                    .cornerRadius(12)
                            }
                            .position(x:200, y: 1540)
                        }
                        
                        //10th button
                        Button(action: {
                            selectedNode = selectedNode == 10 ? nil : 10
                        }) {
                            VStack(spacing: 8) {
                                Image(systemName: completedNodes.contains(10) ? "checkmark.seal.fill" : "graph.2d")
                                    .foregroundStyle(completedNodes.contains(10) ? Color.green.gradient : Color.blue.gradient)
                                    .font(.system(size: 28, weight: .light))
                                    .foregroundStyle(.black.gradient)
                                if(completedNodes.contains(10)){
                                    Text("Finished")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                                else{
                                    Text("Task 10")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .buttonStyle(TaskButtonStyle())
                        .position(x: 330, y: 1560)
                        
                        if selectedNode == 10 {
                            Text("Modeling with lines")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .position(x: 330, y: 1630)
                            
                            Button {
                                showTaskDetail = true
                                activeLesson = LessonProvider.data[10]
                            } label: {
                                Text("Start task")
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 10)
                                    .background(Color.teal)
                                    .cornerRadius(12)
                            }
                            .position(x:330, y: 1670)
                        }
                        
                        //PYTHON-------------------|
                        //SECTION------------------|
                        //COMPLETED----------------|
                        
                        
                        //ML-----------------------|
                        //SECTION------------------|
                        //STARTED------------------|
                        
                        Path { path in
                            path.move(to: CGPoint(x: 330, y: 1970))
                            path.addCurve(to: CGPoint(x: 200, y: 2090),
                                          control1: CGPoint(x: 330, y: 1970),
                                          control2: CGPoint(x: 200, y: 2090))
                        }
                        .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, dash: [10, 15]))
                        .foregroundStyle(.white.opacity(0.15))
                        
                        //11th button
                        Button(action: {
                            selectedNode = selectedNode == 11 ? nil : 11
                        }) {
                            VStack(spacing: 8) {
                                Image(systemName: completedNodes.contains(11) ? "checkmark.seal.fill" : "network")
                                    .foregroundStyle(completedNodes.contains(11) ? Color.green.gradient : Color.blue.gradient)
                                    .font(.system(size: 28, weight: .light))
                                    .foregroundStyle(.black.gradient)
                                if(completedNodes.contains(11)){
                                    Text("Finished")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                                else{
                                    Text("Task 11")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .buttonStyle(TaskButtonStyle())
                        .position(x: 330, y: 1970)
                        
                        if selectedNode == 11 {
                            Text("What Is a Model?")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .position(x: 330, y: 2040)
                            
                            Button {
                                showTaskDetail = true
                                activeLesson = LessonProvider.data[11]
                            } label: {
                                Text("Start task")
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 10)
                                    .background(Color.teal)
                                    .cornerRadius(12)
                            }
                            .position(x:330, y: 2080)
                        }
                        
                        Path { path in
                            path.move(to: CGPoint(x: 200, y: 2090))
                            path.addCurve(to: CGPoint(x: 70, y: 2220),
                                          control1: CGPoint(x: 200, y: 2090),
                                          control2: CGPoint(x: 70, y: 2220))
                        }
                        .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, dash: [10, 15]))
                        .foregroundStyle(.white.opacity(0.15))
                        
                        //12th button
                        Button(action: {
                            selectedNode = selectedNode == 12 ? nil : 12
                        }) {
                            VStack(spacing: 8) {
                                Image(systemName: completedNodes.contains(12) ? "checkmark.seal.fill" : "flask")
                                    .foregroundStyle(completedNodes.contains(12) ? Color.green.gradient : Color.green.gradient)
                                    .font(.system(size: 28, weight: .light))
                                    .foregroundStyle(.black.gradient)
                                if(completedNodes.contains(12)){
                                    Text("Finished")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                                else{
                                    Text("Task 12")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .buttonStyle(TaskButtonStyle())
                        .position(x: 200, y: 2090)
                        
                        if selectedNode == 12 {
                            Text("Training vs Testing")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .position(x: 200, y: 2160)
                            
                            Button {
                                showTaskDetail = true
                                activeLesson = LessonProvider.data[12]
                            } label: {
                                Text("Start task")
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 10)
                                    .background(Color.teal)
                                    .cornerRadius(12)
                            }
                            .position(x:200, y: 2200)
                        }
                        
                        Path { path in
                            path.move(to: CGPoint(x: 70, y: 2220))
                            path.addCurve(to: CGPoint(x: 200, y: 2360),
                                          control1: CGPoint(x: 70, y: 2220),
                                          control2: CGPoint(x: 200, y: 2360))
                        }
                        .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, dash: [10, 15]))
                        .foregroundStyle(.white.opacity(0.15))
                        
                        //13th button
                        Button(action: {
                            selectedNode = selectedNode == 13 ? nil : 13
                        }) {
                            VStack(spacing: 8) {
                                Image(systemName: completedNodes.contains(13) ? "checkmark.seal.fill" : "scalemass")
                                    .foregroundStyle(completedNodes.contains(13) ? Color.green.gradient : Color.black.gradient)
                                    .font(.system(size: 28, weight: .light))
                                    .foregroundStyle(.black.gradient)
                                if(completedNodes.contains(13)){
                                    Text("Finished")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                                else{
                                    Text("Task 13")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .buttonStyle(TaskButtonStyle())
                        .position(x: 70, y: 2220)
                        
                        if selectedNode == 13 {
                            Text("Overfitting vs Generalization")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .position(x: 70, y: 2290)
                            
                            Button {
                                showTaskDetail = true
                                activeLesson = LessonProvider.data[4]
                            } label: {
                                Text("Start task")
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 10)
                                    .background(Color.teal)
                                    .cornerRadius(12)
                            }
                            .position(x:70, y: 2330)
                        }
                        Path { path in
                            path.move(to: CGPoint(x: 200, y: 2360))
                            path.addCurve(to: CGPoint(x: 330, y: 2490),
                                          control1: CGPoint(x: 200, y: 2360),
                                          control2: CGPoint(x: 330, y: 2490))
                        }
                        .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, dash: [10, 15]))
                        .foregroundStyle(.white.opacity(0.15))
                        
                        
                        //14th button
                        Button(action: {
                            selectedNode = selectedNode == 14 ? nil : 14
                        }) {
                            VStack(spacing: 8) {
                                Image(systemName: completedNodes.contains(14) ? "checkmark.seal.fill" : "tag.fill")
                                    .foregroundStyle(completedNodes.contains(14) ? Color.green.gradient : Color.purple.gradient)
                                    .font(.system(size: 28, weight: .light))
                                    .foregroundStyle(.black.gradient)
                                if(completedNodes.contains(14)){
                                    Text("Finished")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                                else{
                                    Text("Task 14")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .buttonStyle(TaskButtonStyle())
                        .position(x: 200, y: 2360)
                        
                        if selectedNode == 14 {
                            Text("Supervised Learning")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .position(x: 200, y: 2430)
                            
                            Button {
                                showTaskDetail = true
                                activeLesson = LessonProvider.data[14]
                            } label: {
                                Text("Start task")
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 10)
                                    .background(Color.teal)
                                    .cornerRadius(12)
                            }
                            .position(x:200, y: 2470)
                        }
                        
                        //15th button
                        Button(action: {
                            selectedNode = selectedNode == 15 ? nil : 15
                        }) {
                            VStack(spacing: 8) {
                                Image(systemName: completedNodes.contains(15) ? "checkmark.seal.fill" : "brain")
                                    .foregroundStyle(completedNodes.contains(15) ? Color.green.gradient : Color.pink.gradient)
                                    .font(.system(size: 28, weight: .light))
                                    .foregroundStyle(.black.gradient)
                                if(completedNodes.contains(15)){
                                    Text("Finished")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                                else{
                                    Text("Task 15")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .buttonStyle(TaskButtonStyle())
                        .position(x: 330, y: 2490)
                        
                        if selectedNode == 15 {
                            Text("Neural Networks")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .position(x: 330, y: 2560)
                            
                            Button {
                                showTaskDetail = true
                                activeLesson = LessonProvider.data[15]
                            } label: {
                                Text("Start task")
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 24)
                                    .padding(.vertical, 10)
                                    .background(Color.teal)
                                    .cornerRadius(12)
                            }
                            .position(x:330, y: 2600)
                        }
                        //ML-----------------------|
                        //SECTION------------------|
                        //COMPLETED----------------|
                        
                        
                        //QUIZZES
                        
                        Button(action: {
                            activeQuizID = 1
                            showQuiz = true
                        }) {
                            VStack(spacing: 8) {
                                Image(systemName: completedNodes.contains(16) ? "checkmark.seal.fill" : "lightbulb.max")
                                    .foregroundStyle(completedNodes.contains(16) ? Color.green.gradient : Color.pink.gradient)
                                    .font(.system(size: 28, weight: .light))
                                    .foregroundStyle(.black.gradient)
                                if(completedNodes.contains(16)){
                                    Text("Finished")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                                else{
                                    Text("Quiz 1")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .buttonStyle(QuizStyle())
                        .position(x: 140, y: 765)
                    }
                    .frame(width: designWidth, height: totalContentHeight, alignment: .top)
                    .scaleEffect(layoutScale, anchor: .top)
                    .frame(maxWidth: .infinity)
                    .frame(height: totalContentHeight * layoutScale, alignment: .top)
                }
                .scrollDisabled(selectedNode != nil)
            .navigationDestination(isPresented: $showTaskDetail) {
                if let currentLesson = LessonProvider.data[selectedNode ?? 1] {
                    TaskDetailView(
                        lesson: currentLesson,
                        taskID: selectedNode ?? 1,
                        completedNodes: $completedNodes
                    )
                }
            }
            
            .navigationDestination(isPresented: $showQuiz) {
                QuizView(quiz: QuizProvider.quizzes[activeQuizID ?? 1] ?? QuizProvider.quizzes[1]!)
            }
             
        }
    }
}
struct TaskButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 100, height: 100)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 28, style: .continuous))
            .contentShape(Rectangle())
            .overlay(
                RoundedRectangle(cornerRadius: 28, style: .continuous)
                    .stroke(
                        LinearGradient(colors: [.white.opacity(0.5), .clear],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing),
                        lineWidth: 1
                    )
            )
            .shadow(color: .black.opacity(0.3), radius: 12, x: 0, y: 8)
            .scaleEffect(configuration.isPressed ? 0.88 : 1.0)
            .animation(.spring(response: 0.3, dampingFraction: 0.7), value: configuration.isPressed)
    }
}

struct FinishedTaskStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 300, height: 80)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 28, style: .continuous))
            .contentShape(Rectangle())
            .overlay(
                RoundedRectangle(cornerRadius: 28, style: .continuous)
                    .stroke(
                        LinearGradient(colors: [.white.opacity(0.5), .clear],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing),
                        lineWidth: 1
                    )
            )
            .shadow(color: .black.opacity(0.3), radius: 12, x: 0, y: 8)
            .scaleEffect(configuration.isPressed ? 0.88 : 1.0)
            .animation(.spring(response: 0.3, dampingFraction: 0.7), value: configuration.isPressed)
    }
}

struct QuizStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 220, height: 70)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 28, style: .continuous))
            .contentShape(Rectangle())
            .overlay(
                RoundedRectangle(cornerRadius: 28, style: .continuous)
                    .stroke(
                        LinearGradient(colors: [.white.opacity(0.5), .clear],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing),
                        lineWidth: 1
                    )
            )
            .shadow(color: .black.opacity(0.3), radius: 12, x: 0, y: 8)
            .scaleEffect(configuration.isPressed ? 0.88 : 1.0)
            .animation(.spring(response: 0.3, dampingFraction: 0.7), value: configuration.isPressed)
    }
}

