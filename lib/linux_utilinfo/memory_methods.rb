module LinuxUtilinfo
	module MemoryMethods
		def get_total_memory
				memory_total_in_kb = `cat /proc/meminfo | grep -i 'MemTotal' | awk '{print $2 " " $3}'` 
				return memory_total_in_kb
		end
	end
end
