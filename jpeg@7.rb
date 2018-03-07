class JpegAT7 < Formula
  desc "Image manipulation library"
  homepage "http://www.ijg.org"
  url "http://www.ijg.org/files/jpegsrc.v7.tar.gz"
  sha256 "50b7866206c5be044c4a2b0d7895898f5a58d31b50e16e79cf7dea3b90337ebf"

  keg_only :versioned_formula

  def install
    ENV.universal_binary

    system "./configure", "CFLAGS=-mmacosx-version-min=10.6",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
