class ScriptlingPlugins < Formula
	desc "Database plugins for Scriptling (sqlite, sql, valkey, badger)"
	homepage "https://github.com/paularlott/scriptling"
	license "MIT"
	version "0.25.0"
	if OS.mac?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-darwin-arm64.zip"
			sha256 "b61c6de50b1513ff96211ef371140bf27e98f115db691b9927f7b91fde1e7bd5"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-darwin-amd64.zip"
			sha256 "2a26488b03526b22d00b61f6bd65a9a866e22466c3f9e19990fb36998596c685"
		end
	elsif OS.linux?
		if Hardware::CPU.arm?
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-linux-arm64.zip"
			sha256 "90d6151f4ea6b080100d8f2bbcb780919eb82e0bcc6f8565f20fcaa259b3e4c3"
		else
			url "https://github.com/paularlott/scriptling/releases/download/v#{version}/plugins-linux-amd64.zip"
			sha256 "b23780b9be5652e5366aaebd23fe4f63cd4090a9adfd5c23c3d3a2d7cd971d1b"
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
