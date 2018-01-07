it "El nieto de AbuelaClotilde es Fito" do
  expect(AbuelaClotilde.nieto).to be Fito
end

it "El novio de Melisa es Fito" do
  expect(Melisa.novio).to be Fito
end

it "Fito aumentó su felicidad" do
  expect(Fito.felicidad > 100).to be true
end

it "Melisa es feliz porque Fito es feliz" do
  expect(Melisa.es_feliz_como_su_novio?).to be true
end

it "AbuelaClotilde alimentó 3 veces a Fito" do
  expect(AbuelaClotilde.veces_alimentado).to eq 3
end