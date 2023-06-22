//
//  notificao agenda.swift
//  HotProspects
//
//  Created by Boris R on 22/06/23.
//

import SwiftUI
import UserNotifications

struct notificao_agenda: View {
    var body: some View {
        VStack{
             Button("Request Permission"){
                 UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                     
                     if success {
                         print("All set!")
                     } else if let error = error{
                         print(error.localizedDescription)
                     }
                 }
             }
             
             Button("Schedule Notification"){
                 let content = UNMutableNotificationContent()
                 content.title = "Feed the Cat"
                 content.subtitle = "Ir looks hungry"
                 content.sound = UNNotificationSound.default
                 
                 // mostrar the notificar em 5 segundo
                 let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                 
                 // escolha aleatoria de indificador
                 let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                 
                 // adicionar a nossa notificaco ao request
                 UNUserNotificationCenter.current().add(request)
             }
         }
    }
}

struct notificao_agenda_Previews: PreviewProvider {
    static var previews: some View {
        notificao_agenda()
    }
}
