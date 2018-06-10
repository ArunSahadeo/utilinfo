module MacUtilinfo
	module HardwareMethods
		def get_processor
			processor_name = `cat /proc/cpuinfo | grep -m 1 -i 'model name' | cut -d ':' -f2`
			processor_name.strip!
			return processor_name
		end

		def get_bios_vendor
			bios_vendor = `cat /sys/devices/virtual/dmi/id/bios_vendor`
			return bios_vendor		
		end

		def get_model
			product_model = `cat /sys/devices/virtual/dmi/id/product_name`
			return product_model
		end

		def get_number_of_cores
			core_number = `grep -c '^processor' /proc/cpuinfo`
			return core_number
		end

		def get_dimensions
			dimensions = `xdpyinfo | grep 'dimensions:' | cut -d ':' -f2`
			return dimensions
		end
	end
end
