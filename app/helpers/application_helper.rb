module ApplicationHelper
	def hidden_div_if(condition, attributes = {}, &block)
		if condition
			attributes["style"] = "display: none"
		end
		#Rails standard helper
		content_tag("div", attributes, &block)
	end
end
