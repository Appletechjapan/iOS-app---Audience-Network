/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

@objcMembers
final class TestInternalURLOpener: NSObject, ShareInternalURLOpening {
  var canOpenURL = false
  var computeCanOpenURL: ((URL) -> Bool)?

  func canOpen(_ url: URL) -> Bool {
    computeCanOpenURL?(url) ?? canOpenURL
  }
}
