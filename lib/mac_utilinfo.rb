require 'mac_utilinfo/hardware_methods'
require 'mac_utilinfo/memory_methods'
require 'mac_utilinfo/operating_system_methods'
require 'mac_utilinfo/environment_methods'

module MacUtilinfo
	include HardwareMethods
	include MemoryMethods
	include OperatingSystemMethods
	include EnvironmentMethods
end
