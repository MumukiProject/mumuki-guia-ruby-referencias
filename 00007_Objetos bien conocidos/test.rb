it "AbuelaClotilde alimenta a su nieto dos veces" do
  AbuelaClotilde.alimentar_nieto!
  expect(Fito.cantidad_de_llamadas).to eq 2
  Fito.volve_a_tu_felicidad!
end

it "Cuando AbuelaClotilde alimenta a su nieto su felicidad aumenta 3 puntos" do
  AbuelaClotilde.alimentar_nieto!
  expect(Fito.felicidad).to eq 103
end