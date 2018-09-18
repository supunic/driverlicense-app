require "csv"

CSV.foreach('db/question_test.csv', headers: true) do |row|
  Question.create(id: row['id'],
                  field_id: row['field_id'],
                  content: row['content'],
                  answer: row['answer'],
                  explanation: row['explanation'],
                  image: row['image'],
                  )
end

CSV.foreach('db/field_test.csv', headers: true) do |row|
  Field.create(id: row['id'],
               field_name: row['field_name'],
               field_code: row['field_code'],
               temporary: row['temporary'],
               )
end
