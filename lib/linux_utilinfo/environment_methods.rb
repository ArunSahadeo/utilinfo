module LinuxUtilinfo
	module EnvironmentMethods
		def get_shell
			return ENV['SHELL']
		end

		def get_editor
			return ENV['EDITOR']
		end
	end
end
