require 'faker'

10.times do
  assembly = Assembly.create(name: Faker::Commerce.material)
end

10.times do
  part = Part.create(part_number: Faker::Commerce.product_name)
end

for i in ((Assembly.first.id)..(Assembly.last.id))
  part = Part.find(i)
  assembly = Assembly.find(i)
  part.assemblies << assembly
end

20.times do
  part_id = rand((Part.first.id)..(Part.last.id))
  assembly_id = rand((Assembly.first.id)..(Assembly.last.id))
  part = Part.find(part_id)
  assembly = Assembly.find(assembly_id)
  part.assemblies << assembly
end

