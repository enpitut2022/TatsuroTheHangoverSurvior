//
//  PastView.swift
//  kaiben
//
//  Created by 谷口功 on 2022/07/28.
//

import SwiftUI

struct PastView: View {
    @FetchRequest(
            entity: Pastdatas.entity(),
            sortDescriptors: []
        ) var datas: FetchedResults<Pastdatas>
    @Environment(\.managedObjectContext) var moc
    var body: some View {
        List {
            ForEach(datas.reversed(), id: \.self){data in
                    Text(data.color ?? "Unknown")
            }.onDelete(perform: removeTask)
        }
    }
    private func removeTask(offsets: IndexSet) {
        offsets.forEach { index in
                    moc.delete(datas[index])
                }
            // 保存を忘れない
                try? moc.save()
    }
}

