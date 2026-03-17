# This file is automatically updated by GoReleaser on each release.
# Do not edit manually.
class NotionCli < Formula
  desc "Notion CLI for humans and AI agents — optimized token consumption"
  homepage "https://github.com/JeremieAlcaraz/notion-cli"
  version "0.0.0"
  license "MIT"

  on_macos do
    on_arm64 do
      url "https://github.com/JeremieAlcaraz/notion-cli/releases/download/v#{version}/notion-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/JeremieAlcaraz/notion-cli/releases/download/v#{version}/notion-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      on_64 do
        url "https://github.com/JeremieAlcaraz/notion-cli/releases/download/v#{version}/notion-cli_#{version}_linux_arm64.tar.gz"
        sha256 "0000000000000000000000000000000000000000000000000000000000000000"
      end
    end
    on_intel do
      url "https://github.com/JeremieAlcaraz/notion-cli/releases/download/v#{version}/notion-cli_#{version}_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  depends_on "charmbracelet/tap/gum" => :optional

  def install
    bin.install "notion"
  end

  def post_install
    ohai "Install the AI agent skill:"
    ohai "  notion skill install"
  end

  test do
    system "#{bin}/notion", "--version"
  end
end
