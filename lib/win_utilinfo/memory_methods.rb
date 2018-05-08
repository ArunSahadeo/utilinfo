module WinUtilinfo
	module MemoryMethods
		def get_total_physical_memory
			total_physical_memory = `wmic computersystem get totalphysicalmemory | more +1`
			total_physical_memory.strip!
			total_physical_memory = total_physical_memory.to_i / (1024 ** 2)
			total_physical_memory = total_physical_memory.to_s.chars.first(2).join.to_i
			return "#{total_physical_memory}GB"
		end
	end
end
