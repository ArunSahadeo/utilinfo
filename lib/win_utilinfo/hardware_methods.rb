module WinUtilinfo
	module HardwareMethods

		def get_manufacturer
			manufacturer = `wmic computersystem get Manufacturer | more +1`.strip!
			return manufacturer			
		end

		def get_model
			model = `wmic computersystem get Model | more +1`.strip!
			return model
		end

		def get_processor_count
			processor_count = `wmic computersystem get NumberofProcessors | more +1`.strip!
			return processor_count
		end

		def get_dimensions
			screen_width = `wmic desktopmonitor get screenwidth | more +1`.strip!
			screen_height = `wmic desktopmonitor get screenheight | more +1`.strip!
			screen_dimensions = []

			if screen_width.count("\n") > 1 && screen_height.count("\n") > 1
				screen_widths = screen_width.split("\n")
				screen_heights = screen_height.split("\n")
				screen_widths.each_with_index do |screen_w, index|
					if screen_w.strip.length < 1
						next
					end
					screen_w.strip!
					dimensions = "#{screen_w}x#{screen_heights[index]}"
					screen_dimensions.concat([dimensions])
				end
			else
				screen_dimensions = "#{screen_width}x#{screen_height}"
			end

			return screen_dimensions
		end
	end
end
