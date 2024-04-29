bool esPalindromo(String cadena) {
  // Eliminar espacios y puntuaciones y convertir todo a minúsculas
  String cadenaFormateada = cadena.replaceAll(RegExp(r'[^a-zA-Z]'), '').toLowerCase();
  
  // Verificar si la cadena y su reverso son iguales
  return cadenaFormateada == cadenaFormateada.split('').reversed.join('');
}

void main() {
  String cadena1 = "Anita lava la tina.";
  String cadena2 = "A man, a plan, a canal, Panam";
  
  if (esPalindromo(cadena1)) {
    print("La cadena \"$cadena1\" es un palíndromo.");
  } else {
    print("La cadena \"$cadena1\" no es un palíndromo.");
  }
  
  if (esPalindromo(cadena2)) {
    print("La cadena \"$cadena2\" es un palíndromo.");
  } else {
    print("La cadena \"$cadena2\" no es un palíndromo.");
  }
}
