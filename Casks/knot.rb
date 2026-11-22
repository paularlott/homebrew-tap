cask "knot" do
	version "0.46.1"

	on_arm do
		sha256 "f061d0f08034978aecf1238c88ca8806df3681af5aac5805b9b060d96fa6581f"
		url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_arm64.zip"
	end
	on_intel do
		sha256 "58ba7f93e404287ac354d4432986bfcb621a17e1d794164ae6739994ef7ce3f3"
		url "https://github.com/paularlott/knot/releases/download/v#{version}/knot_darwin_amd64.zip"
	end

	name "Knot"
	desc "A tool for creating and managing developer environments within a Nomad cluster"
	homepage "https://getknot.dev"

	app "Knot.app"

	# Also make the CLI available on PATH so the knot command works from the
	# terminal without separately installing the formula.
	postflight_steps do
		# The formula also links the knot CLI; refuse to fight over the symlink.
		# A failing run step aborts the install and prints the message on stderr.
		if_path_exists "{{HOMEBREW_PREFIX}}/Cellar/knot" do
			run "/bin/sh", args: ["-c",
				"printf '%s\\n' " \
				"'knot formula is installed, which also provides the knot CLI. Uninstall it first:' " \
				"'  brew uninstall knot' >&2; exit 1"]
		end

		# overwrite: true replaces any existing link (was FileUtils.ln_sf);
		# remove_on_uninstall unlinks the CLI on uninstall, replacing the old
		# uninstall_postflight hook.
		symlink "{{appdir}}/Knot.app/Contents/MacOS/knot", "{{HOMEBREW_PREFIX}}/bin/knot",
			overwrite: true, remove_on_uninstall: true
	end

	zap trash: [
		"~/.config/knot",
		"~/.knot.toml",
	]
end
