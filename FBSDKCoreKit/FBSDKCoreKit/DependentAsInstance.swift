/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

@dynamicMemberLookup
protocol DependentAsInstance {
  associatedtype InstanceDependencies

  var configuredDependencies: InstanceDependencies? { get set }
  var defaultDependencies: InstanceDependencies? { get }

  mutating func setDependencies(_ dependencies: InstanceDependencies)

  #if DEBUG
  mutating func resetDependencies()
  #endif
}

extension DependentAsInstance {
  mutating func setDependencies(_ dependencies: InstanceDependencies) {
    configuredDependencies = dependencies
  }

  #if DEBUG
  mutating func resetDependencies() {
    configuredDependencies = nil
  }
  #endif

  func getDependencies() throws -> InstanceDependencies {
    guard let dependencies = configuredDependencies ?? defaultDependencies else {
      throw MissingDependenciesError(for: Self.self)
    }

    return dependencies
  }

  subscript<Dependency>(dynamicMember keyPath: KeyPath<InstanceDependencies, Dependency>) -> Dependency? {
    try? getDependencies()[keyPath: keyPath]
  }
}
