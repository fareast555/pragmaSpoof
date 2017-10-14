//
//  SourceEditorCommand.swift
//  pragma
//
//  Created by Michael Critchley on 2017/10/09.
//  Copyright © 2017 Michael Critchley. All rights reserved.
//

import Foundation
import XcodeKit

class SourceEditorCommand: NSObject, XCSourceEditorCommand {
    
    func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void ) -> Void {
        
        //Get the buffer
        let buffer = invocation.buffer
        
        //Recover the insertion point
        if let insertionPoint = buffer.selections[0] as? XCSourceTextRange {
            
            //Insert the text we want at the current insertion point
            let currentLine = insertionPoint.start.line
            buffer.lines.insert("//*****************\n  //MARK: - \n//*****************", at: currentLine)
        
            //Prepare the line and column of a new insertion point (Where we will need to start typing after substitution)
            let nextLine = currentLine + 1
            let nextColumn = insertionPoint.start.column + 15
        
            //Swap out the current index[0] insertion range with the new one
            invocation.buffer.selections[0] = (XCSourceTextRange(start: XCSourceTextPosition(line:nextLine, column: nextColumn), end: XCSourceTextPosition(line: nextLine, column: nextColumn)))
    }
    
        completionHandler(nil)
    }
}

