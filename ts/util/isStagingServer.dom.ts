// Copyright 2024 Signal Messenger, LLC
// SPDX-License-Identifier: AGPL-3.0-only

export function isStagingServer(
  serverUrl = window.SignalContext.config.serverUrl
): boolean {
  return /staging/i.test(serverUrl);
}
