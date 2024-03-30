require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

    puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

    memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

    # if文を使用して続きを作成していきましょう。
    # 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。

if memo_type == 1

    puts "拡張子を除いたファイル名を入力してください"

    file_name = gets.chomp.strip
    puts "メモしたい内容を記入してください"
    puts "入力が完了したらctrl+dを押してください"

    memos = []
    while line = STDIN.gets
    break if line.chomp == nil
    memos << line.chomp
    end
    CSV.open("#{file_name}.csv", "w") do |csv|
    memos.each {|memo|csv << [memo]}
    end

elsif memo_type == 2
    puts "既存のメモを編集します。拡張子を除いた既存ファイル名を入力してください。"
    file_name = gets.chomp.strip
    puts "現在のメモ内容"
    existing_memos = CSV.read("#{file_name}.csv") 
    existing_memos.each_with_index do |memo, index| 
    puts "#{memo.join(', ')}" 
    end
    puts "編集後のメモを入力してください"
    puts "入力が完了したらctrl+dを押してください"

    new_memos = []
    while line = STDIN.gets
    break if line.chomp == nil
    new_memos << line.chomp
    end
    CSV.open("#{file_name}.csv","w")do|csv|
    new_memos.each {|memo|csv << [memo]}
end

else
puts "入力値が不正です"
end


   
