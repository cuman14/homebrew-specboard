# frozen_string_literal: true

cask "specboard" do
  desc "Visual GUI for OpenSpec — Spec-Driven Development (SDD) for AI coding assistants"
  homepage "https://github.com/cuman14/specboard"
  version "0.5.7"

  # Apple Silicon (arm64) — M1/M2/M3/M4
  # Intel: no disponible por limitaciones del runner de CI.
  on_arm do
    url "https://github.com/cuman14/specboard/releases/download/v0.5.7/Specboard_0.5.7_aarch64.dmg"
    sha256 "031d90a0820f922819c96c54b5303912260f84112c6639b915f5dc8a352b573e"
  end

  app "Specboard.app"

  zap trash: [
    "~/Library/Application Support/com.specboard.app",
    "~/Library/Caches/com.specboard.app",
    "~/Library/Preferences/com.specboard.app.plist",
    "~/Library/Saved Application State/com.specboard.app.savedState"
  ]
end
