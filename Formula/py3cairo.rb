class Py3cairo < Formula
  desc "Python 3 bindings for the Cairo graphics library"
  homepage "https://cairographics.org/pycairo/"
  url "https://github.com/pygobject/pycairo/releases/download/v1.15.6/pycairo-1.15.6.tar.gz"
  sha256 "ad150ea637860836b66705e0513b8e59494538f0b80497ad3462051368755016"

  bottle do
    cellar :any
    sha256 "2fc705dc8ab8ee6116fa9b6d8897378249ff9373059d87149988269f7a8a30ce" => :high_sierra
    sha256 "89435c90b98b5f05eb0469ff62e5bf08dbc883a4d5ac7aa23c3648974ce88c8e" => :sierra
    sha256 "61101409a2fbe12460086c9590422ac621655c16b355697cc5c47d69bb06b540" => :el_capitan
  end

  depends_on "pkg-config" => :build
  depends_on "cairo"
  depends_on "python3"

  def install
    system "python3", *Language::Python.setup_install_args(prefix)
  end

  test do
    system "python3", "-c", "import cairo; print(cairo.version)"
  end
end
