it "El nieto de AbuelaClotilde es Fito" do
  expect(AbuelaClotilde.nieto).to be Fito
end

it "El novio de Melisa es Fito" do
  expect(Melisa.novio).to be Fito
end

it "Fito engordó" do
  expect(Fito.peso > 70).to be true
end

it "AbuelaClotilde alimentó 3 veces a Fito" do
  expect(AbuelaClotilde.vecesAlimentado).to eq 3
end