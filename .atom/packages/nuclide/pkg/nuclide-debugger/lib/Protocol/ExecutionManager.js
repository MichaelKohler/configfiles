'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});

var _rxjsBundlesRxMinJs = require('rxjs/bundles/Rx.min.js');

var _EventReporter;

function _load_EventReporter() {
  return _EventReporter = require('./EventReporter');
}

/**
 * Bridge between Nuclide IPC and RPC execution control protocols.
 */
/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the LICENSE file in
 * the root directory of this source tree.
 *
 * 
 * @format
 */

class ExecutionManager {

  constructor(debuggerDispatcher) {
    this._executionEvent$ = new _rxjsBundlesRxMinJs.Subject();
    this._debuggerDispatcher = debuggerDispatcher;
  }

  getEventObservable() {
    return this._executionEvent$.asObservable();
  }

  resume() {
    this._debuggerDispatcher.resume();
  }

  pause() {
    this._debuggerDispatcher.pause();
  }

  stepOver() {
    this._debuggerDispatcher.stepOver();
  }

  stepInto() {
    this._debuggerDispatcher.stepInto();
  }

  stepOut() {
    this._debuggerDispatcher.stepOut();
  }

  runToLocation(fileUri, line) {
    // Chrome's continueToLocation implementation incorrect
    // uses source uri instead of scriptId as the location ScriptId
    // field, we mirrow the same behavior for compatibility reason.
    const scriptId = this._debuggerDispatcher.getSourceUriFromUri(fileUri);
    if (scriptId != null) {
      this._debuggerDispatcher.continueToLocation({
        scriptId,
        lineNumber: line,
        columnNumber: 0
      });
    } else {
      (0, (_EventReporter || _load_EventReporter()).reportError)(`Cannot find resolve location for file: ${fileUri}`);
    }
  }

  continueFromLoaderBreakpoint() {
    this._debuggerDispatcher.resume();
    this._raiseIPCEvent('LoaderBreakpointResumed');
  }

  raiseDebuggerPause(params, threadSwitchLocation) {
    const threadSwitchData = this._generateThreadSwitchNotification(params.threadSwitchMessage, threadSwitchLocation);
    this._raiseIPCEvent('NonLoaderDebuggerPaused', {
      stopThreadId: params.stopThreadId,
      threadSwitchNotification: threadSwitchData
    });
  }

  _generateThreadSwitchNotification(message, location) {
    if (message != null && location != null) {
      const { scriptId, lineNumber } = location;
      const sourceURL = this._debuggerDispatcher.getFileUriFromScriptId(scriptId);
      return {
        sourceURL,
        lineNumber,
        message
      };
    } else {
      return null;
    }
  }

  handleDebuggeeResumed() {
    this._raiseIPCEvent('DebuggerResumed');
  }

  // Not a real IPC event, but simulate the chrome IPC events/responses
  // across bridge boundary.
  _raiseIPCEvent(...args) {
    this._executionEvent$.next(args);
  }
}
exports.default = ExecutionManager;