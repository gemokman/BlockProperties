//
//  teamMember.swift
//  GroSelfNew
//
//  Created by STDC_16 on 17/05/2024.
//

import UIKit

struct TeamMember {
    let photo: UIImage?
    let name: String
}

extension TeamMember {
    static func sampleTeamData()-> [TeamMember] {
        let photo1 = UIImage(named: "Apartment")
        let photo2 = UIImage(named: "Condo")
        let photo3 = UIImage(named: "SemiD")
   
        
        let teamMember1 = TeamMember (photo: photo1, name: "Apartment")
        let teamMember2 = TeamMember (photo: photo2, name: "Condominuim")
        let teamMember3 = TeamMember (photo: photo3, name: "Semi-Detach")
        
        
        return [teamMember1, teamMember2, teamMember3]
    }
    
    
}
