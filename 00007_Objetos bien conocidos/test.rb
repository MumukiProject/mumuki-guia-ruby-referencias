it "objetos_equivalentes es una lista" do
  expect(objetos_equivalentes.is_a? Array).to be true
end

it "abuela_clotilde no debe inicializar por defecto a su nieto" do
  expect({AbuelaClotilde.alimentar_nieto}).to raise_error
end

it "Cuando abuela_clotilde alimenta a su nieto lo engorda 3kg" do
  AbuelaClotilde.nieto Fito
  AbuelaClotilde.alimentar_nieto
  expect(Fito.peso).to eq 73
end

it "La abuela alimenta a su nieto dos veces" do
  AbuelaClotilde.nieto Fito
  AbuelaClotilde.alimentar_nieto
  expect(Fito.cantidad_de_llamadas).to eq 2
end