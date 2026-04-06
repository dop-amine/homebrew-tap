class FigmaKit < Formula
  desc "CLI for programmatic Figma design via the MCP server"
  homepage "https://github.com/dop-amine/figma-kit"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dop-amine/figma-kit/releases/download/v0.1.0/figma-kit_0.1.0_darwin_arm64.tar.gz"
      sha256 "cd5fec9e48d39ad744eb58f3875509413658d53d358940a195c481930b1630d5"
    end
    on_intel do
      url "https://github.com/dop-amine/figma-kit/releases/download/v0.1.0/figma-kit_0.1.0_darwin_amd64.tar.gz"
      sha256 "13cb2759213751d3af01ad72a64dac8e7d494d826a85d66698362d1193474b74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dop-amine/figma-kit/releases/download/v0.1.0/figma-kit_0.1.0_linux_arm64.tar.gz"
      sha256 "07129ede3a92463c0bd6fed310d59647c90ae7e497a36946f5ee7dac1bc70c14"
    end
    on_intel do
      url "https://github.com/dop-amine/figma-kit/releases/download/v0.1.0/figma-kit_0.1.0_linux_amd64.tar.gz"
      sha256 "c3b8268aa27d6c491b77c668e9546bfd0a92bcf44dead6e91043ffe5e1881c10"
    end
  end

  def install
    bin.install "figma-kit"
  end

  test do
    assert_match "figma-kit", shell_output("#{bin}/figma-kit --version")
  end
end
