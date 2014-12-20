module ScriptsHelper
  def resource_name
	:stanzas
  end

  def resource
  	@Stanza ||= Stanza.new
  end
end
