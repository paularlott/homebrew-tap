cask "knot" do
	version "0.33.0"

	on_arm do
		sha256 "e32496cb23cdb3d3da2d03ea21fdf1abf99396d116bc60c8a8317b612ab1b063"
		url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
	end
	on_intel do
		sha256 "08e34fab7d64b3e486437e55bdf04e5d0b5ac52d1ff3c5929cbc21e21ef1229c"
		url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
	end

	name "Knot"
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"

	app "Knot.app"

	# Also make the CLI available on PATH so the knot command works from the
	# terminal without separately installing the formula.
	postflight do
		# The formula also links the knot CLI; refuse to fight over the symlink.
		if File.directory?("#{HOMEBREW_PREFIX}/Cellar/knot")
			raise "knot formula is installed, which also provides the knot CLI. Uninstall it first:\n  brew uninstall knot"
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
