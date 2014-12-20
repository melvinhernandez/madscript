class ScriptsController < ApplicationController
  before_action :set_script, only: [:show, :edit, :update, :destroy]

  def index
    @scripts = Script.all
  end

  def show
    @Stanza = Stanza.new
  end

  def new
    @script = Script.new
  end

  def edit
  end

  def create
    @script = Script.new(script_params)
    @script.votes = 1
    @script.num_of_stanzas = 0
    @script.author_id = current_author.id
    if @script.save
      redirect_to script_path(@script.id)
    else
      flash[:error] = @script.erros.full_messages.to_sentence
      redirect_to new_script_path
    end
  end

  def update
    @script.update(script_params)
  end

  def destroy
    @script.destroy
  end

  private
    def set_script
      @script = Script.find(params[:id])
    end

    def script_params
      params.require(:script).permit(:title, :genre, :preface)
    end

end
