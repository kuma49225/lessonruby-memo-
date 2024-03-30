puts "じゃんけん．．．"
puts "0(グー)1(チョキ)2(パー)3(戦わない)"

def janken(user_input,computer_input)
    puts "ホイ！"
    hands = ["グー", "チョキ", "パー"]
    puts " あなた：#{hands[user_input]}を出しました"
    puts " 相手：#{hands[computer_input]}を出しました"

 def judge(user_input, computer_input)
    result = (user_input - computer_input + 3) % 3
    case result
     when 0
     puts "引き分け"
     when 1
     puts "あなたの負け"
     when 2
     puts "あなたの勝ち"
     end
 end

 if user_input == 3
    puts "終了します"
        
 elsif (user_input == 0 || user_input == 1 || user_input == 2  )
    judge(user_input, computer_input)
 else 
 puts "無効な入力です、もう一度入力してください"
 end
end

user_input = gets.chomp.to_i
computer_input = rand(3)

janken(user_input, computer_input)