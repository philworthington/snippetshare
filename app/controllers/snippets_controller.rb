class SnippetsController < ApplicationController

  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new(snippet_params)
    if @snippet.save
      Resque.enqueue(SnippetHighlighter, @snippet.id)
      redirect_to @snippet, :notice => "Successfully created snippet."
    else
      render 'new'
    end
  end

  def show
    @snippet = Snippet.find(params[:id])
  end

  private

  def snippet_params
    params.require(:snippet).permit(:name, :language, :plain_code, :highlighted_code)
  end

end
