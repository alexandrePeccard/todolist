module LayoutHelper
	def javascript(script)
    content_for(:javascript) {
      script .gsub(/(<script>|<\/script>)/, "")
    }
	end
end