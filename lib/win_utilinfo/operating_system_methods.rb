module WinUtilinfo
	module OperatingSystemMethods
		def get_os_name
			os_name = `wmic os get caption | more +1`
			os_name.strip!
			return os_name
		end

		def get_build_number
			build_number = `wmic os get BuildNumber | more +1`
			build_number.strip!
			return build_number
		end

		def get_original_install_date
			install_date = `powershell -c "gcim Win32_OperatingSystem | select InstallDate -ExpandProperty InstallDate"`
			install_date.strip!
			return install_date
		end

		def get_os_architecture
			os_architecture = `wmic os get OSArchitecture | more +1`
			os_architecture.strip!
			return os_architecture
		end

		def is_licenced
			licence_status = `wmic PATH SoftwareLicensingProduct WHERE "ProductKeyID like '%-%' AND Description like '%Windows%'" get LicenseStatus | more +1`
			return licence_status
		end

	end
end
