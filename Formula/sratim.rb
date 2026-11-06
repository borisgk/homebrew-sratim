class Sratim < Formula
  desc "Ultra-lightweight, high-performance media server written in pure Zig"
  homepage "https://github.com/borisgk/sratim"
  version "1.31.1"

  on_macos do
    on_arm do
      url "https://github.com/borisgk/sratim/releases/download/v#{version}/sratim-macos-aarch64"
      sha256 "a9c65d05545f81034e62aa9bafb5b3217e75ed22d1bcf3b382dacd64f5af5e41"

      def install
        bin.install "sratim-macos-aarch64" => "sratim"
        (etc/"sratim").mkpath
        (var/"lib/sratim").mkpath
        (var/"log").mkpath

        config_file = etc/"sratim/config.json"
        unless config_file.exist?
          config_file.write <<~EOS
            {
              "port": 8000,
              "tmdb_access_token": "",
              "tmdb_proxy": ""
            }
          EOS
        end
      end
    end
  end

  service do
    run [opt_bin/"sratim"]
    working_dir var/"lib/sratim"
    keep_alive true
    log_path var/"log/sratim.log"
    error_log_path var/"log/sratim.err.log"
    process_type :background
  end

  def caveats
    <<~EOS
      Sratim has been installed!

      To start Sratim as a background service:
        brew services start sratim

      Configuration file:
        #{etc}/sratim/config.json

      Logs:
        #{var}/log/sratim.log

      Web Interface:
        http://localhost:8000
    EOS
  end

  test do
    system "#{bin}/sratim", "--help" rescue nil
  end
end
