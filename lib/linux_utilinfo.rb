require 'linux_utilinfo/hardware_methods'
require 'linux_utilinfo/memory_methods'
require 'linux_utilinfo/operating_system_methods'
require 'linux_utilinfo/environment_methods'

module LinuxUtilinfo
	include HardwareMethods
	include MemoryMethods
	include OperatingSystemMethods
	include EnvironmentMethods
end
