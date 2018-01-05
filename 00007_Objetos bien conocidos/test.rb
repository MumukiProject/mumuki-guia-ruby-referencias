test "existe abuelaClotilde" {
  abuelaClotilde
}

test "abuelaClotilde entiende el mensaje nieto(unNieto)" {
  abuelaClotilde.nieto(fito)
}

test "abuelaClotilde no debe inicializar por defecto a su nieto" {
  assert.throwsException({abuelaClotilde.alimentarNieto()})
}

test "abuelaClotilde.alimentarNieto() incrementa lo engorda 3 kg" {
  abuelaClotilde.nieto(fito)
  abuelaClotilde.alimentarNieto()
  assert.equals(73, fito.peso())
}


test "abuelaClotilde.alimentarNieto() lo alimenta dos veces" {
  abuelaClotilde.nieto(fito)
  abuelaClotilde.alimentarNieto()
  assert.equals(2, fito.cantidadDeLlamadas())
}