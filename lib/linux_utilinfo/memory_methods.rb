module LinuxUtilinfo
	module MemoryMethods
		def get_total_memory
				memory_total_in_kb = `cat /proc/meminfo | grep -i 'MemTotal' | awk '{print $2}'` 
				memory_total_in_kb /= (1000**2)
				memory_total_in_gb = "#{memory_total_in_gb}GB"
				return memory_total_in_gb
		end
	end
end
