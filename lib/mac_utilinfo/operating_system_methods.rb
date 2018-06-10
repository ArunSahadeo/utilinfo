module MacUtilinfo
	module OperatingSystemMethods
		def get_release_name
      system_release = OperatingSystemMethods.get_system_release
      system_release.strip!
      exec('wget -O product "http://support-sp.apple.com/sp/product?edid=${system_release}"')
      release_name = `xmllint --xpath "string(//body/value/@configCode)" product`
			return release_name
		end

    def get_kernel_version
      kernel_version = `uname -av`
      return kernel_version
    end

		def get_system_release
			system_release = `sw_vers -productVersion`
			return system_release
		end
	end
end
