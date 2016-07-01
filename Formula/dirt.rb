class Dirt < Formula
  desc "Experimental sample playback"
  homepage "https://github.com/tidalcycles/Dirt"
  url "https://github.com/tidalcycles/Dirt/archive/1.0.tar.gz"
  sha256 "4a79a3c8650e8852907beb2d40af0f9bc2824adcffc91041fe62edd55c23ecdc"
  head "https://github.com/tidalcycles/Dirt.git"

  bottle do
    cellar :any
    sha256 "4433c2f444c42144017d8c0bd0fff5726a8fcdef2a7127b3a1da20e601efd0aa" => :el_capitan
    sha256 "7a613357e497ebf96d96cbb18fd4a29a6e7a3e348296f4286b4a0ef62ec45ca2" => :yosemite
    sha256 "21e3d01b0d6995f1e3e6fbd1fb8e249920db144c5f6ddd50ad53fa3750d241f4" => :mavericks
  end

  depends_on "jack"
  depends_on "liblo"

  def install
    system "make", "DESTDIR=#{prefix}", "install"
  end

  test do
    system "#{bin}/dirt", "-h"
  end
end
