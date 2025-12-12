# Homebrew Formula for Donely CLI
# Install: brew install donely-ai/tap/donely-cli

class DonelyCli < Formula
  desc "AI-native desktop GUI automation framework for macOS"
  homepage "https://github.com/Donely-AI/donely-cli"
  url "https://github.com/Donely-AI/donely-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"
  head "https://github.com/Donely-AI/donely-cli.git", branch: "main"

  depends_on "python@3.12"
  depends_on :macos # macOS only (uses pyobjc)

  def install
    # Create virtual environment
    venv = virtualenv_create(libexec, "python3.12")

    # Install the package
    venv.pip_install buildpath

    # Link the binary
    bin.install_symlink libexec/"bin/donely"
  end

  def caveats
    <<~EOS
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

  test do
    assert_match "donely", shell_output("#{bin}/donely version")
  end
end
