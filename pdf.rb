question1_replies = []
question2_replies = []
box.replies.each do |reply|
  question1_replies << reply[:question1]
  question2.replies << reply[:question2]
end

