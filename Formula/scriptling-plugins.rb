class ScriptlingPlugins < Formula
	desc "Database plugins for Scriptling (sqlite, sql, valkey, badger)"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.38.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-darwin-arm64.zip"
			sha256 "cb63644490a2fc883cb2f8b0f2355ec10f3bd7e7b97875fc6145e8b8bc1ca384"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-darwin-amd64.zip"
			sha256 "2dee05e1ffb78d04c6540d4247a9627d2317098b7b4c5fd76427c31d504d5704"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-linux-arm64.zip"
			sha256 "e21b5a5b55e3f511b0633da82b3cb2bbe7d71051844ae61880ec12f69854cb8c"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-linux-amd64.zip"
			sha256 "eebf0d6e2d5e33efceb8bfd4dc5ef7f510b111ff431fc6094677202240708db6"
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
