//
//  RankingManager.swift
//  Gera
//
//  Created by egln on 31/10/22.
//

import SwiftUI



struct RankingData{
    
    
    
    //Cria a váriavel rankingList que vai ser utilizada para alimentar a RankingScreenView com os dados das melhores pontuações. Essa variável terá persistência.
    static var rankingList: [(player: String, matchTime: Int)] = []
   
    //Função que recebe nome do jogador e tempo da partida e confere se faz parte do recorde do usuário. Se sim, atualiza a variável rankingList.
    func rankMyMatch(playerName: String, gametime: Int){
        
        //UserDefaults.standard.set(RankingData.rankingList, forKey: "mylist")
        
        var rankable: (String, Int)
        rankable.0 = playerName
        rankable.1 = gametime
        
        if RankingData.rankingList.count < 10{
            RankingData.rankingList.append(rankable)
            RankingData.rankingList = RankingData.rankingList.sorted(by: {$0.1 < $1.1})
           // UserDefaults.standard.set(RankingData.rankingList, forKey: "mylist")
        }
        else {
            if gametime < RankingData.rankingList.last!.matchTime {
                
                RankingData.rankingList.removeLast()
                RankingData.rankingList.append(rankable)
                RankingData.rankingList = RankingData.rankingList.sorted(by: {$0.1 < $1.1})
               // UserDefaults.standard.set(RankingData.rankingList, forKey: "mylist")
            }
            else{
                //simplesmente não reaja
            }
        }
        
        
    }
    
    
    
}
