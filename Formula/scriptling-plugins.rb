class ScriptlingPlugins < Formula
	desc "Database plugins for Scriptling (sqlite, sql, valkey, badger)"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.24.4"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-darwin-arm64.zip"
			sha256 "044c38309b321592319fe10cb9b73e4d449b155c4d0aaf6d70bf79e97021d2cd"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-darwin-amd64.zip"
			sha256 "19fd2c4402aeb3ebc96433072db0e805fcd39777ad9abebfc113e1299453ea0f"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-linux-arm64.zip"
			sha256 "fa6b28459cc543036a975f4dddc20cba7760015c60986b771acd8bb3a1e57ee7"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-linux-amd64.zip"
			sha256 "ef1ae91edc5f006fac6460ff0db1a0cca210ea464b64fac26fadee5c2c95aa8f"
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
