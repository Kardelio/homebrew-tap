# Generated with JReleaser 1.13.1 at 2026-04-24T13:33:54.203817+02:00

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/kardelio/maestro/releases/download/cli-2.4.0-bk.2/maestro.zip"
  version "2.4.0-bk.2"
  sha256 "3b09a324516852c91b9b043952171e80e94b5cb1816f3817cf034f0425a59d3e"
  license "Apache-2.0"

  depends_on "openjdk" => "17+"
  depends_on "tesseract"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "2.4.0-bk.2", output
  end
end
