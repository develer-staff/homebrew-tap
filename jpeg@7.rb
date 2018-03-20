class JpegAT7 < Formula
  desc "Image manipulation library"
  homepage "http://www.ijg.org"
  url "http://www.ijg.org/files/jpegsrc.v7.tar.gz"
  sha256 "50b7866206c5be044c4a2b0d7895898f5a58d31b50e16e79cf7dea3b90337ebf"

  keg_only :versioned_formula

  bottle do
    cellar :any
    root_url "https://raw.githubusercontent.com/develersrl/homebrew-tap/master/bottles"
    sha256 "bf61b69b58a93f535f3c16acfbe42a544cce956b6ac1ec6ba3afb35f7db98657" => :high_sierra
  end

  def install
    ENV.universal_binary

    system "./configure", "CFLAGS=-mmacosx-version-min=10.6",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
