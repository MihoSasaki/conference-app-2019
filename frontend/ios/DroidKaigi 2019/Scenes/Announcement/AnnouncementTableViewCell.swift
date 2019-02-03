//
//  AnnouncementTableViewCell.swift
//  DroidKaigi 2019
//
//  Created by 佐々木美穂 on 2019/02/02.
//

import UIKit

class AnnouncementTableViewCell: UITableViewCell, Reusable {
    @IBOutlet weak var publishedAt: UILabel!
    @IBOutlet weak var announcementIcon: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var content: UILabel!
    
    var announcement: Announcement? {
        didSet {
            guard let announcement = announcement else
                { return }
            let formatter = DateFormatter()
            formatter.timeStyle = .medium
            formatter.timeStyle = .medium
            publishedAt.text = formatter.string(from: announcement.publishedAt)
            announcementIcon.image = announcement.type.iconImage
            title.text = announcement.title
            content.text = announcement.content
        }
    }
}