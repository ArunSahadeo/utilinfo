module LinuxUtilinfo
	module GeneralMethods
		def get_uptime
			uptime = `uptime | tr "," " " | cut -d " " -f5-6`
			return uptime
		end

		def get_timezone
			timezone = `timedatectl | grep -i 'Time zone' | cut -d ':' -f2`
			return timezone
		end
	end
end
