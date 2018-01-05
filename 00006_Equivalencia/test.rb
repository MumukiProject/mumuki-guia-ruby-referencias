it "objetos_equivalentes es una lista" do
  expect(objetos_equivalentes.is_a? Array).to be true
end

it "objetos_equivalentes tiene tres elementos" do
  expect(objetos_equivalentes.size).to eq 3
end

it "Todos los objetos de objetos_equivalentes son equivalentes" do
  expect(objetos_equivalentes.all? { |objeto| objeto == objetos_equivalentes.first }).to be true
end

it "No todos los objetos de objetos_equivalentes son el mismo" do
  expect(objetos_equivalentes.all? { |objeto| objeto.equal? objetos_equivalentes.first }).to be false
end