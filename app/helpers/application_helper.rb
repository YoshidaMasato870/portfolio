module ApplicationHelper
	def change_area(area_id)
		case area_id
		when 1 
			"北海道"
		when 2 
			"東北"
		when 3
			"関東"
		when 4
			"中部"
		when 5
			"近畿"
		when 6
			"中国・四国"
		when 7
			"九州"
		when 8
			"沖縄"
		end
	end
end
