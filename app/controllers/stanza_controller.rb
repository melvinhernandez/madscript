class StanzaController < ApplicationController
	def new
		@Stanza = Stanza.new
	end

	def create
		@Stanza = Stanza.new(stanza_params)
		@Stanza.author_id = current_author.author_id
		@Script = Script.find(@Stanza.script_id)
		@Script.num_of_stanzas += 1
		@Stanza.stanza_number = @Script.num_of_stanzas
		if @Stanza.save
			redirect_path_to script_path(@Script.id)
		else
			flash[:error] = @Stanzas.erros.full_messages.to_sentence
      		redirect_to script_path(@Script.id)
      	end
	end

	def show
	end
	
	def edit
	end
	
	def update
		@Stanza.update(stanza_params)
	end
	
	def destroy
		@Stanza.destroy
	end
	
	private
		def stanza_params
			params.require(:stanza).permit(:content, :script_id)
		end

		def set_stanza
			@Stanza = Stanza.find(params[:id])
		end

end
