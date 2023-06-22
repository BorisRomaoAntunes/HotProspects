////
////  Results in Swift.swift
////  HotProspects
////
////  Created by Boris R on 22/06/23.
////
//
//import SwiftUI
//
//struct Results_in_Swift: View {
//    @State private var output = ""
//    var body: some View {
//        Text(output)
//            .task {
//                await fetchReadigs()
//            }
//    }
////    func fetchReadigs() async{
////        let fetchTask = Task {  () -> String in
////            let url = URL(string: "https://hws.dev/readings.json")!
////            let (data, _) = try await URLSession.shared.data(from: url)
////            let readigs = try JSONDecoder().decode([Double].self, from: data)
////            return "found \(readigs.count) readings"
////
////        }
//       // let result = await fetchTask.result
//
////        do{
////            let url = URL(string: "https://hws.dev/readings.json")!
////            let (data, _) = try await URLSession.shared.data(for: url)
////            let readigs = try JSONDecoder().decode([Double].self, from: data)
////            output = "found \(readigs.count) readings"
////        } catch {
////            print ("Download error")
////        }
//    }
//}
//
//struct Results_in_Swift_Previews: PreviewProvider {
//    static var previews: some View {
//        Results_in_Swift()
//    }
//}
