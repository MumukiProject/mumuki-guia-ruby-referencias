it "AbuelaClotilde no debe inicializar por defecto a su nieto" do
  expect { AbuelaClotilde.alimentar_nieto }.to raise_error
end

it "AbuelaClotilde alimenta a su nieto dos veces" do
  AbuelaClotilde.nieto=Fito
  AbuelaClotilde.alimentar_nieto
  expect(Fito.cantidad_de_llamadas).to eq 2
  Fito.volve_a_tu_felicidad!
end

it "Cuando AbuelaClotilde alimenta a su nieto su felicidad aumenta 3 puntos" do
  AbuelaClotilde.nieto=Fito
  AbuelaClotilde.alimentar_nieto
  expect(Fito.felicidad).to eq 103
end