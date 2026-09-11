cask "knot-pro" do
	version "0.34.2"

	on_arm do
		sha256 "cc947f119197dca99f3e702d0f1bc2573336b3321811cd3cd8e50ec23fe9d81a"
		url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_arm64.zip"
	end
	on_intel do
		sha256 "3d86f4d8121dede552848e15a70184b52fc4ce5be0d1b8ad8988418d508d5d5b"
		url "https://github.com/paularlott/knot-pro/releases/download/v#{version}/knot_darwin_amd64.zip"
	end

	name "Knot Pro"
	desc "Knot Pro - commercial version of the cloud development environment manager"
	homepage "https://getknot.dev"

	app "Knot.app"

	# Also make the CLI available on PATH so the knot command works from the
	# terminal without separately installing the formula.
	postflight do
		# The formula also links the knot CLI; refuse to fight over the symlink.
		if File.directory?("#{HOMEBREW_PREFIX}/Cellar/knot-pro")
			raise "knot formula is installed, which also provides the knot CLI. Uninstall it first:\n  brew uninstall knot-pro"
		end

		# The app is ad-hoc signed (not notarized) and brew quarantines cask
		# downloads, which makes Gatekeeper kill the binary on first exec.
		# Strip the flag so the app and the CLI link work immediately.
		# Non-bang system_command: xattr -d fails if the attribute is absent.
		system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "/Applications/Knot.app"]

		FileUtils.ln_sf("/Applications/Knot.app/Contents/MacOS/knot", "#{HOMEBREW_PREFIX}/bin/knot")
	end

	uninstall_postflight do
		FileUtils.rm_f "#{HOMEBREW_PREFIX}/bin/knot"
	end

	zap trash: [
		"~/.config/knot",
		"~/.knot.toml",
	]
end
