it "referencias_repetidas es una lista" do
  expect(referencias_repetidas.is_a? Array).to be true
end

it "referencias_repetidas tiene tres elementos" do
  expect(referencias_repetidas.size).to eq 3
end

it "Todos los objetos de referencias_repetidas son el mismo" do
  expect(referencias_repetidas.all? { |referencia| referencia.equal? referencias_repetidas.first }).to be true
end