class TextInspectionsController < ApplicationController

  def new
    render "new"
  end

  def create
    # render plain: params.inspect
    #render plain: params[:text_inspection].inspect
    @text = params[:text_inspection][:user_text]
    words = @text.split(" ")
    @word_count = words.length
    #275words per minute
    @words_per_minute = @word_count / 275 * 60.000

    words_frequency = {}
    words.each do |word|
      !words_frequency[word] ?
            words_frequency[word] = 1
          : words_frequency[word] += 1
    end

    words_frequency = words_frequency.sort {|a1,a2| a2[1]<=>a1[1]}

    @frequented_words = Hash[words_frequency[0,10]].keys

    # ***** Updated *****
    render "results"
  end
end
