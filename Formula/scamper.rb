class Scamper < Formula
  desc "Advanced traceroute and network measurement utility"
  homepage "https://www.caida.org/tools/measurement/scamper/"
  url "https://www.caida.org/tools/measurement/scamper/code/scamper-cvs-20190916.tar.gz"
  sha256 "e70ae651ec5af0bae50908c9e74d2c0f45f906b61289be917cbe1898cfef5d21"

  bottle do
    cellar :any
    sha256 "86ce9c48569e2b9a0ba259632ec11dc852af9bfb3e2f4bd02d66c097c7560549" => :catalina
    sha256 "54a5c00a81fc755aed1f128f7c924d0e3e6e4f8724a5c6ffccdc3bb48dab68c9" => :mojave
    sha256 "fa6b3af9fc7242b80dd02e81692f7718f6bc7c23eb1d8702bb0c27a6d3da8221" => :high_sierra
    sha256 "cc977930ab390ddeb88f14da3c0f89d8900166509d1e32b59f1a9e5cf5a58a9b" => :sierra
  end

  depends_on "pkg-config" => :build
  depends_on "openssl@1.1"

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
