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
        //connectedToGame = true
        
        
//        advertiseAssistant = MCAdvertiserAssistant(serviceType: GameConnectionManager.serviceType, discoveryInfo: nil, session: session)
//        advertiseAssistant.delegate = self
//        advertiseAssistant.start()
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

    func send(colorName: String) {
        printDevices()
        do {
            try self.session.send(colorName.data(using: .utf8)!, toPeers: session.connectedPeers, with: .reliable)
            isTurn = false
        } catch let error {
            print(error)
        }
    }
    
    func advertiser(_ advertiser: MCNearbyServiceAdvertiser, didReceiveInvitationFromPeer peerID: MCPeerID, withContext context: Data?, invitationHandler: @escaping (Bool, MCSession?) -> Void) {
        invitationHandler(true, session)
        connectedToGame = true
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
            connectedToGame = false
        }
    }
    
    func session(_ session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID) {
        isTurn = true
        
        let str = String(data: data, encoding: .utf8)!
        print(str)
        
        DispatchQueue.main.async {
            self.colorCode = str
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
