//
//  HabitList.swift
//  HabitTracker
//
//  Created by Damian Jardim on 4/4/25.
//

import SwiftUI

struct HabitList: View {
    @State var habbitList:[Habit] = [
        Habit(title: "Brush My Teeth", timesCompleted: 10),
        Habit(title: "Take Out Trash", timesCompleted: 3),
        Habit(title: "Vacuum House", timesCompleted: 0)
    ]
        
    var body: some View {
        NavigationStack{
            if(habbitList.count > 0){
                List(habbitList){habbit in
                    Text("\(habbit.title)")
                }
            }else {
                Text("No habits yet")
            }
            
        }.navigationTitle("Habit List")
    }
}

struct HabbitListItem: View{
    @State var title:String = ""
    @State var timesCompleted:Int = 0
    
    var body: some View {
        HStack{
            Text("\(title)")
            Text("\(timesCompleted)")
        }
    }
}

struct Habit: Identifiable{
    var id:UUID = UUID()
    var title:String
    var timesCompleted:Int
    
}

#Preview {
    HabitList()
}
