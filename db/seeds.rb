100.times do
    Survivor.create({
        name: Faker::Name.name,
        age: Faker::Number.within(1..120),
        gender: Faker::Gender.binary_type,
        latitude: Faker::Address.latitude,
        longitude: Faker::Address.longitude,
        abducted: Faker::Boolean.boolean
    })
end
