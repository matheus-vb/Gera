//
//  RankingManager.swift
//  Gera
//
//  Created by egln on 31/10/22.
//

import SwiftUI

struct RankingData{
    
    
    //Cria a váriavel rankingList que vai ser utilizada para alimentar a RankingScreenView com os dados das melhores pontuações. Essa variável terá persistência.
    @State static var rankingList: [(player: String, matchTime: Int)] = [("Meu Iphone", 12),
                                                                 ("Iphone de Tales", 45)]
   
    
    
    //Função que recebe nome do jogador e tempo da partida e confere se faz parte do recorde do usuário. Se sim, atualiza a variável rankingList.
    func rankMyMatch(playerName: String, gametime: Int){
        
        var rankable: (String, Int)
        rankable.0 = playerName
        rankable.1 = gametime
        
        if RankingData.rankingList.count < 10{
           RankingData.rankingList.append(rankable)
            RankingData.rankingList = RankingData.rankingList.sorted(by: {$0.1 < $1.1})
        }
        else {
            if gametime < RankingData.rankingList.last!.matchTime {
                
                RankingData.rankingList.removeLast()
                RankingData.rankingList.append(rankable)
                RankingData.rankingList = RankingData.rankingList.sorted(by: {$0.1 < $1.1})
            }
            else{
                //simplesmente não reaja
            }
        }
        
        
    }
    
    
    
}
