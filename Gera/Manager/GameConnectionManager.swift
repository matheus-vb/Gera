//
//  GameConnectionManager.swift
//  Gera
//
//  Created by matheusvb on 18/10/22.
//

import Foundation
import MultipeerConnectivity
import SwiftUI

protocol GameConnectionManagerDelegate {
    func colorChanged(manager: GameConnectionManager, colorName: String)
}

class GameConnectionManager: NSObject, ObservableObject, MCSessionDelegate, MCAdvertiserAssistantDelegate, MCBrowserViewControllerDelegate, MCNearbyServiceAdvertiserDelegate {
    
    private static let serviceType = "gamemanager-mpc"
    
    @Published var connectedToGame = false
    @Published var color: Color
    @Published var colorCode: String = "FFF"
    @Published var isTurn: Bool = false
    @Published var changed: Bool = false
    
    @Published var isHost: Bool = false
    @Published var colorHost: String = "FFF"
    @Published var colorJoin: String = "FFF"
    @Published var mixColor: String = "FFF"
    
    @Published var hostPlayed: Bool = false
    @Published var joinPlayed: Bool = false
    
    let peerID: MCPeerID!
    var session: MCSession!
    var advertiseAssistant: MCNearbyServiceAdvertiser!
    
    var delegate: GameConnectionManagerDelegate?
    
    override init() {
        peerID = MCPeerID(displayName: UIDevice.current.name)
        session = MCSession(peer: peerID, securityIdentity: nil, encryptionPreference: .required)
        color = .red
        
        super.init()
        session.delegate = self
    }
    
    func hostGame() {
        advertiseAssistant = MCNearbyServiceAdvertiser(peer: peerID, discoveryInfo: nil, serviceType: GameConnectionManager.serviceType)
        advertiseAssistant.delegate = self
        advertiseAssistant.startAdvertisingPeer()
        isTurn = true
        isHost = true
    }
    
    func joinGame() {
        guard
            let window = UIApplication.shared.windows.first,
            let session = session
        else { return }
        
        isTurn = false
        
        let browserViewController = MCBrowserViewController(serviceType: GameConnectionManager.serviceType, session: session)
        browserViewController.delegate = self
        window.rootViewController?.present(browserViewController, animated: true)
    }
    
    func printDevices() {
        var devices: [String] = session.connectedPeers.map{$0.displayName}
        
        for device in devices {
            print(device)
        }
    }

    func getMix(player1: String, player2: String) async {
        let colors = ColorCodes()
        
        print("player1: \(player1)")
        print("player2: \(player2)")
        print("-----------")
        print(colors.RED)
        print(colors.ORANGE)
        
        if player1 == colors.RED && player2 == colors.ORANGE {
            DispatchQueue.main.async {
                self.mixColor = colors.REDpORANGE
            }
        }
        if player1 == colors.RED && player2 == colors.PURPLE {
            DispatchQueue.main.async {
                self.mixColor = colors.REDpPURPLE
            }
        }
        if player1 == colors.RED && player2 == colors.DARK_GREEN {
            DispatchQueue.main.async {
                self.mixColor = colors.REDpGREEN
            }
        }
        if player1 == colors.YELLOW && player2 == colors.ORANGE {
            DispatchQueue.main.async {
                self.mixColor = colors.YELLOWpORANGE
            }
        }
        if player1 == colors.YELLOW && player2 == colors.PURPLE {
            DispatchQueue.main.async {
                self.mixColor = colors.YELLOWpPURPLE
            }
        }
        if player1 == colors.YELLOW && player2 == colors.DARK_GREEN {
            DispatchQueue.main.async {
                self.mixColor = colors.YELLOWpGREEN
            }
        }
        if player1 == colors.BLUE && player2 == colors.ORANGE {
            DispatchQueue.main.async {
                self.mixColor = colors.BLUEpORANGE
            }
        }
        if player1 == colors.BLUE && player2 == colors.PURPLE {
            DispatchQueue.main.async {
                self.mixColor = colors.BLUEpPURPLE
            }
        }
        if player1 == colors.BLUE && player2 == colors.DARK_GREEN {
            DispatchQueue.main.async {
                self.mixColor = colors.BLUEpGREEN
            }
        }
        
        if hostPlayed && joinPlayed {
            try? await Task.sleep(nanoseconds: 1_000_000_000)
            DispatchQueue.main.async {
                self.mixColor = "FFF"
                self.colorHost = "FFF"
                self.colorJoin = "FFF"
            }
        }
        
    }
    
    func send(colorName: String) {
        
        if isHost {
            self.colorHost = colorName
            self.hostPlayed = true
            self.joinPlayed = false
        } else if !isHost {
            self.colorJoin = colorName
            self.hostPlayed = true
            self.joinPlayed = true
        }
        Task{
            await getMix(player1: colorHost, player2: colorJoin)
        }
        
        do {
            try self.session.send(colorName.data(using: .utf8)!, toPeers: session.connectedPeers, with: .reliable)
            isTurn = false
            changed.toggle()
        } catch let error {
            print(error)
        }
    }
    
    func advertiser(_ advertiser: MCNearbyServiceAdvertiser, didReceiveInvitationFromPeer peerID: MCPeerID, withContext context: Data?, invitationHandler: @escaping (Bool, MCSession?) -> Void) {
        invitationHandler(true, session)
        DispatchQueue.main.async {
            self.connectedToGame = true
        }
    }
    
    
    func browserViewControllerDidFinish(_ browserViewController: MCBrowserViewController) {
        browserViewController.dismiss(animated: true)
    }
    
    func browserViewControllerWasCancelled(_ browserViewController: MCBrowserViewController) {
        browserViewController.dismiss(animated: true)
    }
    
    func session(_ session: MCSession, peer peerID: MCPeerID, didChange state: MCSessionState) {
        if state == MCSessionState.connected {
            print("Connected: \(peerID.displayName)")
            DispatchQueue.main.async {
                self.connectedToGame = true
            }
        } else if state == MCSessionState.connecting {
            print("Connecting: \(peerID.displayName)")
        } else if state == MCSessionState.notConnected {
            print("Not connected: \(peerID.displayName)")
            DispatchQueue.main.async {
                self.connectedToGame = false
            }
        }
    }
    
    func session(_ session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID) {
        
        DispatchQueue.main.async {
            self.isTurn = true
            self.changed.toggle()
        }
        
        let str = String(data: data, encoding: .utf8)!
        print(str)
        
        DispatchQueue.main.async {
            self.colorCode = str
            if self.isHost {
                self.colorJoin = str
                self.hostPlayed = true
                self.joinPlayed = true
            } else if !self.isHost {
                self.colorHost = str
                self.joinPlayed = false
                self.hostPlayed = true
            }
            
            Task {
                await self.getMix(player1: self.colorHost, player2: self.colorJoin)
            }

        }
    }
    
    func session(_ session: MCSession, didReceive stream: InputStream, withName streamName: String, fromPeer peerID: MCPeerID) {
        //
    }
    
    func session(_ session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, with progress: Progress) {
        //
    }
    
    func session(_ session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, at localURL: URL?, withError error: Error?) {
        //
    }
}
