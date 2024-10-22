void setup() {
  size(320, 320);
  fondo = loadImage("https://github.com/guille-lopez33/Descubre-la-programacion/blob/main/hakari.png?raw=true"); // Cambia esto por el enlace de tu imagen de fondo
}

void draw() {
  background(209, 91, 91);
  image("https://github.com/guille-lopez33/Descubre-la-programacion/blob/main/hakari.png?raw=true", 0, 0, 320, 320); // Mostrar la imagen de fondo

  if (pantalla.equals("menu")) {
    mostrarMenu();
  } else if (pantalla.equals("instrucciones")) {
    mostrarInstrucciones();
  } else if (pantalla.equals("juego")) {
    mostrarJuego();
  } else if (pantalla.equals("creditos")) {
    mostrarCreditos();
  }
}

// Función para mostrar el menú principal
void mostrarMenu() {
  // Botón Jugar
  if (hover(80, 80, 160, 40)) {
    fill(180, 200, 50); // Color al pasar el ratón
  } else {
    fill(237, 218, 161);
  }
  rect(80, 80, 160, 40); 
  fill(29, 151, 148);
  text("Jugar", 133, 108);
  
  // Botón Instrucciones
  if (hover(80, 140, 160, 40)) {
    fill(180, 200, 50);
  } else {
    fill(237, 218, 161);
  }
  rect(80, 140, 160, 40);
  fill(29, 151, 148);
  text("Instrucciones", 105, 167);
  
  // Botón Créditos
  if (hover(80, 200, 160, 40)) {
    fill(180, 200, 50);
  } else {
    fill(237, 218, 161);
  }
  rect(80, 200, 160, 40);
  fill(29, 151, 148);
  text("Créditos", 127, 225);
  
  // Campo para ingresar el nombre del jugador
  fill(255);
  rect(100, 250, 120, 30);
  fill(0);
  text("Nombre: " + jugador, 110, 270);
}

// Función para mostrar instrucciones
void mostrarInstrucciones() {
  fill(255);
  text("Instrucciones del Juego", 50, 50);
  text("W: Arriba", 50, 70);
  text("A: Izquierda", 50, 90);
  text("S: Abajo", 50, 110);
  text("D: Derecha", 50, 130);
  mostrarBotonRegresar();
}

// Función para mostrar el juego (placeholder)
void mostrarJuego() {
  fill(255);
  text("Aquí se iniciaría el juego.", 50, 50);
  mostrarBotonRegresar();
}

// Función para mostrar créditos
void mostrarCreditos() {
  fill(255);
  text("Créditos", 50, 50);
  text("Juego creado por [Tu Nombre]", 50, 70);
  mostrarBotonRegresar();
}

// Función para mostrar el botón de regresar al menú
void mostrarBotonRegresar() {
  if (hover(80, 250, 160, 40)) {
    fill(180, 200, 50);
  } else {
    fill(237, 218, 161);
  }
  rect(80, 250, 160, 40);
  fill(29, 151, 148);
  text("Regresar", 130, 270);
}

// Función para manejar el mouse y detectar si está sobre un botón
boolean hover(int x, int y, int w, int h) {
  return mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h;
}

// Función para detectar el clic del mouse
void mousePressed() {
  if (mouse("menu")) {
    if (hover(80, 80, 160, 40)) {
      pantalla = "juego"; // Cambiar a la pantalla del juego
    } else if (hover(80, 140, 160, 40)) {
      pantalla = "instrucciones"; // Cambiar a instrucciones
    } else if (hover(80, 200, 160, 40)) {
      pantalla = "creditos"; // Cambiar a créditos
    }
  } else if (pantalla.equals("creditos") || pantalla.equals("instrucciones") || pantalla.equals("juego")) {
    if (hover(80, 250, 160, 40)) {
      pantalla = "menu"; // Volver al menú principal
    }
  }
}

// Función para recibir el nombre del jugador
void keyTyped() {
  if (key != ENTER && key != BACKSPACE) {
    jugador += key; // Añadir letra al nombre
  } else if (key == BACKSPACE && jugador.length() > 0) {
    jugador = jugador.substring(0, jugador.length() - 1); // Eliminar última letra
  }
}
