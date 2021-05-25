//
//  CouncilMemberCell.swift
//  Jedi Council
//
//  Created by Teacher on 08.03.2021.
//

import UIKit
import Kingfisher

class CouncilMemberCell: UICollectionViewCell {
    @IBOutlet private var imageView: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var rankLabel: UILabel!

    private var member: CouncilMember?

    func set(member: CouncilMember) {
        self.member = member
        imageView.image = member.imageUrl == nil
            ? #imageLiteral(resourceName: "No-Image-Placeholder")
            : nil
        imageView.kf.setImage(with: member.imageUrl)
        nameLabel.text = member.name
        rankLabel.text = name(of: member.rank)
        
    }

    private func name(of rank: CouncilMember.Rank) -> String {
        switch rank {
            case .grandmaster:
                return "Jedi Grandmaster"
            case .headOfCouncil:
                return "Jedi Master, Head of Jedi Counci"
            case .master:
                return "Jedi Master"
            case .knight:
                return "Take a seat"
        }
    }
}
