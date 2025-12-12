cask "donely-cli" do
  version "0.1.0"
  sha256 "bbded15d83b437c58aac939c8fd17f2a25d1ce5d598dcbfeea29113d05e909c1"

  url "https://github.com/Donely-AI/donely-releases/releases/download/v#{version}/donely"
  name "Donely CLI"
  desc "AI-native desktop GUI automation framework for macOS"
  homepage "https://github.com/Donely-AI/donely-cli"

  binary "donely"

  caveats <<~EOS
    Donely requires macOS Accessibility permissions.

    To grant permissions:
      1. Open System Settings > Privacy & Security > Accessibility
      2. Enable your terminal app (Terminal, iTerm2, etc.)
      3. You may need to restart your terminal

    Verify installation:
      donely check

    Quick start:
      donely apps              # List running applications
      donely screenshot out.png # Take a screenshot
      donely inspect --app Finder --depth 3
  EOS
end
