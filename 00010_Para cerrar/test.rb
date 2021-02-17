before do
  Fideos.descartar_la_salsa!
end

it "Inicialmente Jor no tiene un plato del dia" do
  expect { Jor.salar! }.to raise_error
end

it "Los Fideos inicialmente no están picantes" do
  expect(Fideos.picantes?).to be false
end

it "Cuando Jor picantea su plato pasa a estar picante" do
  Jor.plato_del_dia = Fideos
  Jor.picantear!
  expect(Fideos.picantes?).to be true
end

it "Los Fideos están picantes cuando Luchi los suaviza quitándole 2 ajíes después de que Jor los picanteó" do
  Jor.plato_del_dia = Fideos
  Jor.picantear!
  Luchi.suavizar! Fideos, 2
  expect(Fideos.picantes?).to be true
end

it "Los Fideos dejan de estar picantes cuando Luchi los suaviza quitándoles 3 ajíes después de que Jor los picanteó" do
  Jor.plato_del_dia = Fideos
  Jor.picantear!
  Luchi.suavizar! Fideos, 3
  expect(Fideos.picantes?).to be false
end

it "Los Fideos están picantes cuando Luchi los suaviza quitándoles 2 ajíes después de que Jor los picanteó 2 veces" do
  Jor.plato_del_dia = Fideos
  Jor.picantear!
  Jor.picantear!
  Luchi.suavizar! Fideos, 2
  expect(Fideos.picantes?).to be true
end

it "Los Fideos no están picantes cuando Luchi los suaviza quitándoles 4 ajíes después de que Jor los picanteó 3 veces porque se descarta la salsa" do
  Jor.plato_del_dia = Fideos
  Jor.picantear!
  Jor.picantear!
  Jor.picantear!
  Luchi.suavizar! Fideos, 4
  expect(Fideos.picantes?).to be false
end