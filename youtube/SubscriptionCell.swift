//
//  SubscriptionCell.swift
//  youtube
//
//  Created by Alan Liou on 6/30/17.
//  Copyright © 2017 Alan Liou. All rights reserved.
//

import UIKit

class SubscriptionCell: FeedCell {

    override func fetchVideos() {
        ApiService.sharedInstance.fetchSubscriptionFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }

}
