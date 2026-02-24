//
//  LessonView.swift
//  SwiftML
//
//  Created by Sri Challa on 2/23/26.
//

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
/*
import SwiftUI
struct LessonView: View {
    @State private var selectedNode: Int? = nil
    @State private var showTaskDetail = false
    @State private var activeLesson: Lesson? = nil
    @State private var completedNodes: Set<Int> = []
    
    let totalContentHeight: CGFloat = 2650
    var body: some View {
        NavigationStack {
            GeometryReader { geo in
                //let rightSide = geo.size.width * 0.85
                //let middle    = geo.size.width * 0.5
                //let leftSide  = geo.size.width * 0.15
                ScrollView{
                    
                    ZStack(alignment: .top) {
                        //Color.black
                        // .ignoresSafeArea()
                        
                        LinearGradient(colors: [.teal, .teal.opacity(0.7), .blue, .blue.opacity(0.3), .purple.opacity(0.5), .purple], startPoint: .top, endPoint: .bottom)
                            .frame(width: geo.size.width, height: totalContentHeight + 400)
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
                        .position(x: 195, y: 850)
                        
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
                        
                        //PYTHON-------------------|
                        //SECTION----------------|
                        //STARTED----------------|
                        
                        //1st button
                        GeometryReader { geo in
                            
                            let rightX = geo.size.width * 0.85
                            let baseY  = geo.size.height * 0.12
                            
                            // 1st Button
                            Button(action: {
                                selectedNode = selectedNode == 1 ? nil : 1
                            }) {
                                VStack(spacing: 8) {
                                    Image(systemName: completedNodes.contains(1) ? "checkmark.seal.fill" : "terminal")
                                        .foregroundStyle(completedNodes.contains(1) ? Color.green.gradient : Color.black.gradient)
                                        .font(.system(size: geo.size.width*0.08, weight: .light))
                                    
                                    Text(completedNodes.contains(1) ? "Finished" : "Task 1")
                                       // .font(.caption.bold())
                                        .font(.system(size: geo.size.width*0.03))
                                        .foregroundColor(.white)
                                }
                            }
                            .buttonStyle(TaskButtonStyle())
                            .position(x: geo.size.width * 0.8, y: geo.size.height * 0.5)
                            
                            
                            if selectedNode == 1 {
                                
                                Text("Intro to Python!")
                                    .foregroundColor(.white)
                                    .font(.system(size: geo.size.width * 0.04))
                                    .position(x: geo.size.width * 0.8, y: geo.size.height * 0.72)
                                
                                Button {
                                    activeLesson = LessonProvider.data[1]
                                    showTaskDetail = true
                                } label: {
                                    Text("Start task")
                                        .foregroundColor(.black)
                                        .padding(.horizontal, 24)
                                        .padding(.vertical, 10)
                                        .background(Color.teal)
                                        .cornerRadius(12)
                                        
                                }
                                .position(x: geo.size.width * 0.8, y: geo.size.height * 0.85)
                                .frame(width: geo.size.width * 0.4, height: geo.size.height * 0.1)

                            }
                        }
                        .frame(height: 300)
                        
                        //ML-----------------------|
                        //SECTION------------------|
                        //COMPLETED----------------|
                    }
                    .frame(width: geo.size.width, height: totalContentHeight)
                }
            }
            .navigationDestination(isPresented: $showTaskDetail) {
                if let currentLesson = LessonProvider.data[selectedNode ?? 1] {
                    TaskDetailView(
                        lesson: currentLesson,
                        taskID: selectedNode ?? 1,
                        completedNodes: $completedNodes
                    )
                }
            }
        }
    }
}
struct TaskButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(
                width: min(UIScreen.main.bounds.width * 0.25, 180),
                height:  min(UIScreen.main.bounds.width * 0.25, 180),)
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

*/
