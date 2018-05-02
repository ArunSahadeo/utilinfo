module LinuxUtilinfo
	module OperatingSystemMethods
		def get_distro
			distro_name = `cat /etc/os-release | grep -i '^ID=' | cut -d '=' -f2`
			distro_name.strip!
			printf(distro_name)
		end

		def get_platform
			platform = `uname`
			return platform
		end

		def get_distro_release
			distro_release = `cat /etc/os-release | grep -i '^VERSION_ID=' | cut -d '=' -f 2`
			distro_release.gsub!(/^\"|\"?$/, '')
			return distro_release
		end
	end
end
