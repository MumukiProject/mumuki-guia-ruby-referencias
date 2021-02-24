before do
  Fideos.descartar_la_salsa!
  Jor.plato_del_dia = Fideos
end

it "Los Fideos inicialmente no están picantes" do
  resultado = Fideos.picantes?
  expect(resultado).to be(false), "Fideos.picantes? debería ser false porque inicialmente no tienen ajíes. Sin embargo, Fideo.picantes? fue #{resultado}"
end

it "Si Jor picantea su plato, los Fideos quedan picantes" do
  Jor.picantear!
  resultado = Fideos.picantes?
  expect(resultado).to be(true), "Fideos.picantes? debería ser true porque deberían tener 5 ajíes. Sin embargo, Fideos.picantes? fue #{resultado}."
end

it "Si Jor picantea su plato y Luchi luego suaviza en 2 ajíes, los Fideos quedan picantes" do
  Jor.picantear!
  Luchi.suavizar! Fideos, 2
  resultado = Fideos.picantes?
  expect(resultado).to be(true), "Fideos.picantes? debería ser true porque deberían tener 3 ajíes. Sin embargo, Fideos.picantes? fue #{resultado}."
end

begin
  Fideos.descartar_la_salsa!
  Jor.plato_del_dia = Fideos
  Jor.picantear!
  Luchi.suavizar! Fideos, 3
  resultado = Fideos.picantes?
  it "Si Jor picantea su plato y Luchi luego suaviza en 3 ajíes, los Fideos no quedan picantes" do
    expect(resultado).to be(false), "Fideos.picantes? debería ser false porque deberían tener 2 ajíes. Sin embargo, Fideos.picantes? fue #{resultado}."
  end
rescue => e
end

it "Si Jor picantea su plato dos veces y Luchi luego suaviza en 1 ají, los Fideos quedan picantes" do
  Jor.picantear!
  Jor.picantear!
  Luchi.suavizar! Fideos, 1
  resultado = Fideos.picantes?
  expect(resultado).to be(true), "Fideos.picantes? debería ser true porque deberían tener 9 ajíes. Sin embargo, Fideos.picantes? fue #{resultado}."
end

it "Luchi descarta la salsa cuando tiene más de 10 ajíes" do
  Jor.picantear!
  Luchi.suavizar! Fideos, 4
  Jor.picantear!
  Jor.picantear!
  
  allow(Fideos).to receive(:descartar_la_salsa!)
  Luchi.suavizar! Fideos, 1
  expect(Fideos).to have_received(:descartar_la_salsa!), "Luchi debería descartar la salsa porque Fideos debería tener 11 ajíes"
end
  
it "Luchi no descarta la salsa cuando tiene 10 ajíes" do
  Jor.picantear!
  Jor.picantear!
  allow(Fideos).to receive(:descartar_la_salsa!)
  Luchi.suavizar! Fideos, 4
  expect(Fideos).not_to have_received(:descartar_la_salsa!), "Luchi no debería descartar la salsa porque Fideos debería tener 10 ajíes"
end

it "Luchi no descarta la salsa cuando tiene menos de 10 ajíes" do
  Jor.picantear!
  Luchi.suavizar! Fideos, 1
  Jor.picantear!
  allow(Fideos).to receive(:descartar_la_salsa!)
  Luchi.suavizar! Fideos, 1
  expect(Fideos).not_to have_received(:descartar_la_salsa!), "Luchi no debería descartar la salsa porque Fideos debería tener 5 ajíes"
end