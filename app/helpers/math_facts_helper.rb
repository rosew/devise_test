module MathFactsHelper
  
  def status_color(math_fact)
    case math_fact.status
    when "mastered"
      "blue"
    when "answered"
      "light-purple"
    when "learning"
      "pink"
    when "need_help"
      "light-pink"
    else
      "white"
    end
  end
  
end
