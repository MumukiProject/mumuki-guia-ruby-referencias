before do
  Fideos.descartar_la_salsa!
end

it "Inicialmente Jor no tiene un plato del dia" do
  expect { Jor.picantear! }.to raise_error
end

it "Los Fideos inicialmente no están picantes" do
  resultado = Fideos.picantes?
  expect(resultado).to be(false), "Fideos.picantes? debería ser false, pero fue #{resultado}"
end

it "Cuando Jor picantea su plato pasa a estar picante porque le agrega 5 ajíes" do
  Jor.plato_del_dia = Fideos
  Jor.picantear!
  resultado = Fideos.picantes?
  expect(resultado).to be(true), "Fideos.picantes? debería ser true, pero fue #{resultado}"
end

it "Los Fideos están picantes cuando Luchi los suaviza quitándole 2 ajíes después de que Jor los picanteó" do
  Jor.plato_del_dia = Fideos
  Jor.picantear!
  Luchi.suavizar! Fideos, 2
  resultado = Fideos.picantes?
  expect(resultado).to be(true), "Fideos.picantes? debería ser true, pero fue #{resultado}"
end

it "Los Fideos no están picantes si tienen 2 ajíes" do
  Jor.plato_del_dia = Fideos
  Jor.picantear!
  Luchi.suavizar! Fideos, 3
  resultado = Fideos.picantes?
  expect(resultado).to be(false), "Fideos.picantes? debería ser false, pero fue #{resultado}"
end

it "Los Fideos están picantes cuando Luchi los suaviza quitándoles 1 ají después de que Jor los picanteó 2 veces" do
  Jor.plato_del_dia = Fideos
  Jor.picantear!
  Jor.picantear!
  Luchi.suavizar! Fideos, 1
  resultado = Fideos.picantes?
  expect(resultado).to be(true), "Fideos.picantes? debería ser true, pero fue #{resultado}"
end

it "Luchi descarta la salsa cuando tiene más de 10 ajíes" do
  Jor.plato_del_dia = Fideos
  Jor.picantear!
  Jor.picantear!
  Jor.picantear!
  Luchi.suavizar! Fideos, 4
  resultado = Fideos.picantes?
  expect(resultado).to be(false), "Fideos.picantes? debería ser false, pero fue #{resultado}"
  expect(Fideos).to receive(:descartar_la_salsa!)
end

it "Luchi no descarta la salsa cuando tiene 10 ajíes" do
  Jor.plato_del_dia = Fideos
  Jor.picantear!
  Jor.picantear!
  Luchi.suavizar! Fideos, 4
  resultado = Fideos.picantes?
  expect(Fideos).to_not receive(:descartar_la_salsa!)
  expect(resultado).to be(true), "Fideos.picantes? debería ser true, pero fue #{resultado}"
end

it "Luchi no descarta la salsa cuando tiene menos de 10 ajíes" do
  Jor.plato_del_dia = Fideos
  Jor.picantear!
  Luchi.suavizar! Fideos, 2
  resultado = Fideos.picantes?
  expect(Fideos).to_not receive(:descartar_la_salsa!)
  expect(resultado).to be(true), "Fideos.picantes? debería ser true, pero fue #{resultado}"
end