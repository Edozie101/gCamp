class WelcomeController < ApplicationController
  def home
    @quotesncharacters = [
      "Failure is not an option. Everyone has to Succeed", "Arnold Shwarznegger",
      "Your time is limited so don't waste it living someone elses life", "Steve Jobs",
      "Better Ingredients, Better Pizza","Papa Johns"]


  end
  def terms

  end

  def faq
    @faq = ["What do I do if I have a problem?", "Well if you have a problem come to me ","But what if I'm nerrrrrvousssss..", "No choice dude, you're answering my questions" ]

  end

end
