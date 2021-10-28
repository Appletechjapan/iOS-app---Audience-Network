/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

import FBAEMKit
import Foundation

class SampleAEMInvocations { // swiftlint:disable:this convenience_type
  static func createGeneralInvocation1() -> AEMInvocation {
    AEMInvocation(
      campaignID: "test_campaign_1",
      acsToken: "test_token_1234567",
      acsSharedSecret: "test_shared_secret",
      acsConfigID: "test_config_id_123",
      businessID: nil,
      isTestMode: false,
      hasSKAN: false
    )! // swiftlint:disable:this force_unwrapping
  }

  static func createGeneralInvocation2() -> AEMInvocation {
    AEMInvocation(
      campaignID: "test_campaign_2",
      acsToken: "test_token_1234567",
      acsSharedSecret: "test_shared_secret",
      acsConfigID: "test_config_id_123",
      businessID: nil,
      isTestMode: false,
      hasSKAN: false
    )! // swiftlint:disable:this force_unwrapping
  }

  static func createDebuggingInvocation() -> AEMInvocation {
    AEMInvocation(
      campaignID: "debugging_campaign",
      acsToken: "debugging_token",
      acsSharedSecret: "debugging_shared_secret",
      acsConfigID: "debugging_config_id_123",
      businessID: nil,
      isTestMode: true,
      hasSKAN: false
    )! // swiftlint:disable:this force_unwrapping
  }

  static func createSKANOverlappedInvocation() -> AEMInvocation {
    AEMInvocation(
      campaignID: "debugging_campaign",
      acsToken: "debugging_token",
      acsSharedSecret: "debugging_shared_secret",
      acsConfigID: "debugging_config_id_123",
      businessID: nil,
      isTestMode: false,
      hasSKAN: true
    )! // swiftlint:disable:this force_unwrapping
  }
}
