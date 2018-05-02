#!/usr/bin/env ruby

require "linux_utilinfo"
require "utilinfo/version"

class Utilinfo
	def self.load_os_module
		nix_name = `uname -a`
		if Gem.win_platform?
			include WinUtilinfo
		elsif nix_name && $?.success?
			if nix_name.downcase.include?('linux')
				include LinuxUtilinfo
			elsif nix_name.downcase.include?('darwin')
				include MacUtilinfo
			end
		else
			printf("Could not detect your OS.\n")
			return
		end
	end
	def initialize
		Utilinfo.load_os_module
	end
end
