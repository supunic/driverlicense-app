require "csv"

CSV.foreach('db/Question.csv', headers: true) do |row|
  Question.create(id: row['id'],
                  field_id: row['field_id'],
                  content: row['content'],
                  answer: row['answer'],
                  explanation: row['explanation'],
                  image: row['image'],
                  )
end

CSV.foreach('db/Field.csv', headers: true) do |row|
  Field.create(id: row['id'],
               field_name: row['field_name'],
               temporary: row['temporary'],
               )
end
