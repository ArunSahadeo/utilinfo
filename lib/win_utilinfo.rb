require 'win_utilinfo/hardware_methods'
require 'win_utilinfo/memory_methods'
require 'win_utilinfo/operating_system_methods'

module WinUtilinfo
	include HardwareMethods
	include MemoryMethods
	include OperatingSystemMethods
end
