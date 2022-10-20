//
//  GameConnectionManager.swift
//  Gera
//
//  Created by matheusvb on 18/10/22.
//

import Foundation
import MultipeerConnectivity

class GameConnectionManager: NSObject, ObservableObject, MCSessionDelegate, MCAdvertiserAssistantDelegate, MCBrowserViewControllerDelegate {
    
    private static let serviceType = "gamemanager-mpc"
    
    let peerID: MCPeerID!
    var session: MCSession!
    var advertiseAssistant: MCAdvertiserAssistant!
    
    override init() {
        peerID = MCPeerID(displayName: UIDevice.current.name)
        session = MCSession(peer: peerID, securityIdentity: nil, encryptionPreference: .required)
        
        super.init()
        session.delegate = self
    }
    
    func hostGame() {
        advertiseAssistant = MCAdvertiserAssistant(serviceType: GameConnectionManager.serviceType, discoveryInfo: nil, session: session)
        advertiseAssistant.delegate = self
        advertiseAssistant.start()
    }
    
    func joinGame() {
        guard
            let window = UIApplication.shared.windows.first,
            let session = session
        else { return }
        
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
    
    
    func browserViewControllerDidFinish(_ browserViewController: MCBrowserViewController) {
        browserViewController.dismiss(animated: true)
    }
    
    func browserViewControllerWasCancelled(_ browserViewController: MCBrowserViewController) {
        browserViewController.dismiss(animated: true)
    }
    
    func session(_ session: MCSession, peer peerID: MCPeerID, didChange state: MCSessionState) {
        if state == MCSessionState.connected {
            print("Connected: \(peerID.displayName)")
        } else if state == MCSessionState.connecting {
            print("Connecting: \(peerID.displayName)")
        } else if state == MCSessionState.notConnected {
            print("Not connected: \(peerID.displayName)")
        }
    }
    
    func session(_ session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID) {
        //
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
