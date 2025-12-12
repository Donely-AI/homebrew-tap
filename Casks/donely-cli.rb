cask "donely-cli" do
  version "0.1.0"
  sha256 "5bec7db776f25364b24b5e5ca23788b3f44a3465612ad9ada1e3c1810c4ee736"

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
