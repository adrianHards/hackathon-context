# delete all stories

puts "destroying all stories"
Story.destroy_all
puts "there are #{Story.count} stories"

# seed our demo story
puts "creating 'Ruby on Rails' story"
feature_story = Story.new(
  published: true,
  name: 'Ruby on Rails!',
  photo: 'rabbit-ruby.jpg',
  summary: "Ruby's at it again! Today, she's off to the skate park. But does Ruby have what it takes to overcome her fears? Lets find out!"
)

feature_story.save!

translation = {
  "When Daddy Rabbit suggests going to the skate park," => "Cuando Papá Conejo sugiere ir al parque de patinaje,",
  "Ruby's big brother gets excited," => "el hermano mayor de Ruby se emociona,",
  "but little Ruby is nervous." => "Pero la pequeña Ruby está nerviosa.",
  "What if she falls over and everyone laughs at her?" => "¿Y si se cae y todos se ríen de ella?",
  "The family arrive at the park and Ruby's brother takes off." => "La familia llega al parque y el hermano de Ruby se va.",
  "He zooms past Ruby," => "Pasa velozmente a Ruby,",
  "at turbo speed." => "a velocidad turbo.",
  "That makes Ruby even more nervous." => "Eso pone a Ruby aún más nerviosa.",
  "Daddy Rabbit gives Ruby a gentle nudge of encouragement." => "Papá Conejo le da a Ruby un suave empujón de aliento.",
  "Daddy Rabbit says," => "Papá Conejo dices,",
  "'if you don't try, you'll never know'." => "'si no lo intentas, nunca lo sabrás'.",
  "Sensing Ruby's uncertainty," => "Al sentir la incertidumbre de Ruby,",
  "Daddy Rabbit holds Ruby's hand and they take the first step together." => "Papá Conejo toma la mano de Ruby y juntos dan el primer paso.",
  "Ruby slips a little but Daddy Rabbit catches her and she tries again." => "Ruby se resbala un poco pero Daddy Rabbit la atrapa y ella lo intenta de nuevo.",
  "Ruby is a natural!" => "¡El rubí es natural!",
  "Ruby falls in love with skating and practices every day for months." => "Ruby se enamora del patinaje y practica todos los días durante meses.",
  "She now can do tricks," => "¡Ahora puede hacer trucos,",
  "like jumps and skating off rails!" => "como saltos y patinar sobre rieles!",
  "Her friends have nicknamed her 'Ruby on Rails'." => "Sus amigos la han apodado 'Ruby on Rails'."
}

english =
["When Daddy Rabbit suggests going to the skate park,", "Ruby's big brother gets excited,", "but little Ruby is nervous.", "What if she falls over and everyone laughs at her?",
"The family arrive at the park and Ruby's brother takes off.", "He zooms past Ruby,", "at turbo speed.", "That makes Ruby even more nervous.", "Daddy Rabbit gives Ruby a gentle nudge of encouragement.",
"Daddy Rabbit says,", "'if you don't try, you'll never know'.", "Sensing Ruby's uncertainty,", "Daddy Rabbit holds Ruby's hand and they take the first step together.",
"Ruby slips a little but Daddy Rabbit catches her and she tries again.", "Ruby is a natural!", "Ruby falls in love with skating and practices every day for months.",
"She now can do tricks,", "like jumps and skating off rails!", "Her friends have nicknamed her 'Ruby on Rails'."]

spanish = []
i = 0
translation.each do |key, value|
  spanish << translation[english[i]]
  p translation[english[i]].nil? ? "nil" : translation[english[i]]
  i += 1
end

puts "#{spanish.count} should be #{english.count}"

puts "adding sentences for feature story"

english.each do |sentence|
  add_sentence = Sentence.new(story: feature_story)
  add_sentence.english = sentence
  add_sentence.spanish = translation[sentence]
  add_sentence.save!
end

puts "made #{feature_story.sentences.count} sentences"

puts "creating 3 additional unpublished stories"

puts "creating 'Ruby learns Hotwire' story"
story = Story.new(
  published: false,
  name: 'Ruby learns Hotwire',
  photo: 'rabbit-read.jpg',
  summary: "Ruby decides to enter a Hotwire themed hackathon despite knowing little about it. Will she be able to make something in time?!"
)

story.save!

puts "creating 'Ruby needs a hug!' story"
story = Story.new(
  published: false,
  name: 'Ruby needs a hug',
  photo: 'rabbit-hug.jpg',
  summary: "Ruby's laptop is broken! It's returning all sorts of crazy errors stopping her from doing any work, what will she do!?"
)

story.save!

puts "creating 'Ruby in the cloud!' story"
story = Story.new(
  published: false,
  name: 'Ruby in the cloud!',
  photo: 'rabbit-float.jpg',
  summary: "Ruby needs to find an alternative to Heroku fast, but she's flummoxed by all these alternatives. Which will she pick?!"
)

story.save!

puts "there are #{Story.count} stories, only #{Story.where(published: true).count} is published"
