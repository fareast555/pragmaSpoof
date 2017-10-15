//
//  SourceEditorCommand.swift
//  pragma
//
//  Created by Michael Critchley on 2017/10/09.
/*
 Copyright © 2017 Michael Critchley. All rights reserved.
 
 Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */


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

