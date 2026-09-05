class ScriptlingPlugins < Formula
	desc "Database plugins for Scriptling (sqlite, sql, valkey, badger)"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.24.3"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-darwin-arm64.zip"
			sha256 "5350cdbfa47c1bea408f4c972e9fd920a12f8400203ec37160f88f5e1303594c"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-darwin-amd64.zip"
			sha256 "b2f045e2ce0a3c3e8ecd8660cb725824588373cbd18a5c298b5c35601615f351"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-linux-arm64.zip"
			sha256 "72b3c0d29bf4b1dafeadecb5041004f79383a4e8c46e17c73f27dc4f9881f10e"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-linux-amd64.zip"
			sha256 "d5135749f3e2df21fb3e2780fd4d2ba9c916ac4d1beb7cfbe87b5847ee8102d4"
		end
	end

	def install
		# The zip holds all four plugin binaries named plainly; installing
		# them together gives a directory --plugin-dir can point at.
		(libexec/"plugins").install Dir["*"]
	end

	def caveats
		<<~EOS
			The database plugin binaries are in:
			  #{opt_libexec}/plugins

			Load them with either:
			  export SCRIPTLING_PLUGIN_DIR="#{opt_libexec}/plugins"
			or pass to each run:
			  scriptling --plugin-dir #{opt_libexec}/plugins script.py

			scriptling users do not need this formula — the plugins are
			compiled in.
		EOS
	end
end
